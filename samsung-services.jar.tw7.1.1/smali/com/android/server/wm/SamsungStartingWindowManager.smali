.class public Lcom/android/server/wm/SamsungStartingWindowManager;
.super Ljava/lang/Object;
.source "SamsungStartingWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/IStartingWindowManagerBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SamsungStartingWindowManager$1;,
        Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;,
        Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;,
        Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CUSTOM_STARTING_WINDOW_THRESHOLD_SPACE:D = 2.0

.field private static final KEYGUARDPREVIEW_DIRNAME:Ljava/lang/String; = "keyguardpreview"

.field private static final REVERSESTARTINGWINDOW_DIRNAME:Ljava/lang/String; = "reversestartingwindow"

.field static final SAFE_DEBUG:Z

.field private static final STARTINGWINDOW_DIRNAME:Ljava/lang/String; = "startingwindow"

.field private static SUPPORT_CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Z = false

.field private static final TAG:Ljava/lang/String; = "SamsungStartingWindowManager"

.field public static final TYPE_KEYGUARD_PREVIEW:I = 0x3

.field public static final TYPE_REVERSE_STARTING_WINDOW:I = 0x2

.field public static final TYPE_STARTING_WINDOW:I = 0x1

.field static mCapturedScreensLandFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static mCapturedScreensPortFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static final mCustomImageSystemPath:Ljava/io/File;

.field private static final mKeyguardPreviewPath:Ljava/io/File;

.field private static final mReverseStartingWindowPath:Ljava/io/File;

.field private static final mStartingWindowPath:Ljava/io/File;

.field private static final mSystemCapturedPath:Ljava/io/File;

.field private static final mSystemCapturedPathCache:Ljava/io/File;

.field private static final mSystemCapturedPathLand:Ljava/io/File;

.field private static final mSystemCapturedPathPort:Ljava/io/File;


# instance fields
.field final PIXEL_PER_BYTE:I

.field private final TAG_RESID:Ljava/lang/String;

.field final mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

.field mDoNotRemoveStartingWindow:Z

.field mHeight:I

.field private mKeyguardPreviewResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSettingsObserver:Lcom/android/server/wm/SamsungStartingWindowManager$SettingsObserver;

.field mStartingWindowAutoCaptureEnabled:I

.field private mStartingWindowDataMapsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingWindowResId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWidth:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/SamsungStartingWindowManager;->SUPPORT_CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowDataMapsForUser:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/SamsungStartingWindowManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get8()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SamsungStartingWindowManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->makeBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SamsungStartingWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/SamsungStartingWindowManager;->makingCaptureFolder()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SamsungStartingWindowManager;->clearCustomStartingWindowData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/io/File;)V
    .locals 0
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string v2, "startingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    .line 111
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string v2, "reversestartingwindow"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    const-string v2, "keyguardpreview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/custom_image"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/captured"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/captured/port"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    .line 132
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/captured/land"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/captured/cache"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathCache:Ljava/io/File;

    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SamsungStartingWindowManager;->SUPPORT_CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Z

    .line 141
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "resId"

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->TAG_RESID:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowDataMapsForUser:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    .line 121
    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowAutoCaptureEnabled:I

    .line 122
    iput-boolean v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mDoNotRemoveStartingWindow:Z

    .line 252
    new-instance v0, Lcom/android/server/wm/SamsungStartingWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SamsungStartingWindowManager$1;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V

    .line 251
    iput-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    .line 1952
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->PIXEL_PER_BYTE:I

    .line 332
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4
    .param p0, "byteArray"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2075
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 2086
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 2087
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 2086
    or-int/2addr v0, v1

    .line 2087
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 2086
    or-int/2addr v0, v1

    return v0

    .line 2077
    :pswitch_0
    return v1

    .line 2079
    :pswitch_1
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 2081
    :pswitch_2
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 2083
    :pswitch_3
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 2084
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    .line 2083
    or-int/2addr v0, v1

    return v0

    .line 2075
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkCaptureFolder()V
    .locals 19

    .prologue
    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1060
    .local v2, "before":J
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1061
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/SamsungStartingWindowManager;->makingCaptureFolder()Z

    .line 1065
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    long-to-double v12, v12

    sget-object v14, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v8, v12, v14

    .line 1066
    .local v8, "perFree":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_0

    .line 1067
    const-string v12, "*"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCaptureFiles(Ljava/lang/String;)V

    .line 1068
    const-string v12, "SamsungStartingWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CustomStartingWindow there is too small space "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%, so delete captures "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1072
    :cond_0
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1073
    .local v10, "pm":Landroid/content/pm/PackageManager;
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 1075
    .local v11, "tmpCapturedFolders":[Ljava/io/File;
    if-eqz v11, :cond_4

    .line 1076
    const/4 v12, 0x0

    array-length v14, v11

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_4

    aget-object v7, v11, v13

    .line 1077
    .local v7, "folder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1078
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1076
    :cond_1
    :goto_1
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 1082
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1089
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_1

    .line 1090
    const/4 v12, 0x0

    array-length v15, v6

    :goto_2
    if-ge v12, v15, :cond_1

    aget-object v5, v6, v12

    .line 1091
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".tmp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1092
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1090
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1083
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1084
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "SamsungStartingWindowManager"

    const-string v15, "CustomStartingWindow the app is removed. capture remove also"

    invoke-static {v12, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    goto :goto_1

    .line 1095
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "files":[Ljava/io/File;
    :cond_3
    const-string v16, "SamsungStartingWindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CustomStartingWindow checked file is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    sget-object v16, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1102
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "folder":Ljava/io/File;
    :cond_4
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 1103
    if-eqz v11, :cond_8

    .line 1104
    const/4 v12, 0x0

    array-length v14, v11

    move v13, v12

    :goto_4
    if-ge v13, v14, :cond_8

    aget-object v7, v11, v13

    .line 1105
    .restart local v7    # "folder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1106
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1104
    :cond_5
    :goto_5
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_4

    .line 1110
    :cond_6
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1116
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1117
    .restart local v6    # "files":[Ljava/io/File;
    if-eqz v6, :cond_5

    .line 1118
    const/4 v12, 0x0

    array-length v15, v6

    :goto_6
    if-ge v12, v15, :cond_5

    aget-object v5, v6, v12

    .line 1119
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".tmp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1120
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1118
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1111
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :catch_1
    move-exception v4

    .line 1112
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "SamsungStartingWindowManager"

    const-string v15, "CustomStartingWindow the app was removed. capture remove also"

    invoke-static {v12, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    goto :goto_5

    .line 1123
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "files":[Ljava/io/File;
    :cond_7
    sget-object v16, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1128
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "folder":Ljava/io/File;
    :cond_8
    const-string v12, "SamsungStartingWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CustomStartingWindow check capture folder "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1133
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathCache:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1134
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathCache:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 1136
    :cond_9
    sget-object v12, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathCache:Ljava/io/File;

    invoke-static {v12}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V

    .line 1138
    const-string v12, "SamsungStartingWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CustomStartingWindow check cache folder"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method private clearCustomStartingWindowData(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 180
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 181
    .local v2, "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    if-nez v2, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "startingWindowDataKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v3, "SamsungStartingWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindow pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed or replaced. remove StartingWindowData for it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v1    # "startingWindowDataKey":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getStartingWindowDataMapForUser(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private getStartingWindowDataMapForUser(IZ)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "createMapIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowDataMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    .local v0, "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 202
    .restart local v0    # "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowDataMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    return-object v0
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 2058
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2059
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 2060
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 2061
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 2062
    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 2058
    return-object v0
.end method

.method private makeBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x1

    .line 2095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2096
    .local v0, "before":J
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2097
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v6

    .line 2098
    .local v6, "rs":Landroid/renderscript/RenderScript;
    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v6, p1, v8, v9}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 2099
    .local v3, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 2100
    .local v4, "output":Landroid/renderscript/Allocation;
    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v7

    .line 2103
    .local v7, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    sget-object v8, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "samsung_starting_window_blur_radius"

    const/16 v10, 0x19

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    int-to-float v5, v8

    .line 2106
    .local v5, "radius":F
    const/high16 v8, 0x41c80000    # 25.0f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 2107
    const/high16 v5, 0x41c80000    # 25.0f

    .line 2110
    :cond_0
    invoke-virtual {v7, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 2111
    invoke-virtual {v7, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 2112
    invoke-virtual {v7, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 2113
    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 2114
    const-string v8, "SamsungStartingWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow makeBlurBitma success "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    return-object v2
.end method

.method private makingCaptureFolder()Z
    .locals 1

    .prologue
    .line 1143
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const/4 v0, 0x0

    return v0

    .line 1144
    :cond_0
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1145
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1147
    :cond_1
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1148
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1150
    :cond_2
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1151
    sget-object v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1153
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private removeCaptureFiles(Ljava/lang/String;)V
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1179
    .local v0, "before":J
    invoke-direct {p0}, Lcom/android/server/wm/SamsungStartingWindowManager;->makingCaptureFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1180
    const-string v7, "SamsungStartingWindowManager"

    const-string v8, "CustomStartingWindow There are no folders to delete"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return-void

    .line 1184
    :cond_0
    const-string v8, "*"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1185
    .local v2, "deleteAll":Z
    const-string v8, "land"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1186
    .local v3, "deleteLand":Z
    const-string v8, "port"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1188
    .local v4, "deletePort":Z
    const/4 v6, 0x0

    .line 1190
    .local v6, "removeFolders":[Ljava/io/File;
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 1191
    :cond_1
    sget-object v8, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1192
    .local v6, "removeFolders":[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 1193
    array-length v9, v6

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v5, v6, v8

    .line 1194
    .local v5, "folder":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    .line 1193
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1199
    .end local v5    # "folder":Ljava/io/File;
    .end local v6    # "removeFolders":[Ljava/io/File;
    :cond_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    .line 1200
    :cond_3
    sget-object v8, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1201
    .restart local v6    # "removeFolders":[Ljava/io/File;
    if-eqz v6, :cond_4

    .line 1202
    array-length v8, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v5, v6, v7

    .line 1203
    .restart local v5    # "folder":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    .line 1202
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1208
    .end local v5    # "folder":Ljava/io/File;
    .end local v6    # "removeFolders":[Ljava/io/File;
    :cond_4
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .end local v4    # "deletePort":Z
    :goto_2
    if-nez v4, :cond_5

    .line 1209
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathLand:Ljava/io/File;

    invoke-direct {v5, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1210
    .restart local v5    # "folder":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    .line 1211
    new-instance v5, Ljava/io/File;

    .end local v5    # "folder":Ljava/io/File;
    sget-object v7, Lcom/android/server/wm/SamsungStartingWindowManager;->mSystemCapturedPathPort:Ljava/io/File;

    invoke-direct {v5, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1212
    .restart local v5    # "folder":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    .line 1215
    .end local v5    # "folder":Ljava/io/File;
    :cond_5
    const-string v7, "SamsungStartingWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CustomStartingWindow file deleted with option "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1208
    .restart local v4    # "deletePort":Z
    :cond_6
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private removeFolder(Ljava/io/File;)V
    .locals 7
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 1159
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    return-void

    .line 1162
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1163
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 1164
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "land"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1166
    sget-object v4, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    :cond_1
    sget-object v4, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1173
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1158
    return-void
.end method

.method private removeXml(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "file":Ljava/io/File;
    packed-switch p2, :pswitch_data_0

    .line 501
    return-void

    .line 489
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 485
    :cond_0
    return-void

    .line 493
    .local v0, "file":Ljava/io/File;
    :pswitch_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .local v0, "file":Ljava/io/File;
    goto :goto_0

    .line 497
    .local v0, "file":Ljava/io/File;
    :pswitch_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    .local v0, "file":Ljava/io/File;
    goto :goto_0

    nop

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private restoreAllFromXml()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 578
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 579
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 582
    :cond_0
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 583
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow starting window restoreAllFromXml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 585
    .local v7, "tmpStartingWindowFiles":[Ljava/io/File;
    if-eqz v7, :cond_1

    .line 586
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow starting window file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    array-length v10, v7

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v1, v7, v9

    .line 589
    .local v1, "file":Ljava/io/File;
    const-string v11, "SamsungStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow starting window file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "fileName":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v11, 0x1

    invoke-direct {p0, v1, v11}, Lcom/android/server/wm/SamsungStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 588
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SamsungStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 603
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 604
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 607
    :cond_2
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow reverse starting window restoreAllFromXml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 609
    .local v6, "tempReverseStartingWindowFiles":[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 610
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow reverse starting window file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    array-length v10, v6

    move v9, v8

    :goto_2
    if-ge v9, v10, :cond_3

    aget-object v1, v6, v9

    .line 612
    .restart local v1    # "file":Ljava/io/File;
    const-string v11, "SamsungStartingWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CustomStartingWindow file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 615
    .restart local v2    # "fileName":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 616
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    const/4 v11, 0x2

    invoke-direct {p0, v1, v11}, Lcom/android/server/wm/SamsungStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 611
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 617
    :catch_1
    move-exception v0

    .line 618
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SamsungStartingWindowManager"

    const-string v12, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 626
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 627
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 630
    :cond_4
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow keyguard preview restoreAllFromXml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-object v9, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 632
    .local v5, "tempKeyguardPreviewFiles":[Ljava/io/File;
    if-eqz v5, :cond_5

    .line 633
    const-string v9, "SamsungStartingWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CustomStartingWindow keyguard preview file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    array-length v9, v5

    :goto_4
    if-ge v8, v9, :cond_5

    aget-object v1, v5, v8

    .line 635
    .restart local v1    # "file":Ljava/io/File;
    const-string v10, "SamsungStartingWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CustomStartingWindow file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 638
    .restart local v2    # "fileName":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 639
    .restart local v3    # "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 645
    const/4 v10, 0x3

    invoke-direct {p0, v1, v10}, Lcom/android/server/wm/SamsungStartingWindowManager;->restoreFromXml(Ljava/io/File;I)V

    .line 634
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 640
    :catch_2
    move-exception v0

    .line 641
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "SamsungStartingWindowManager"

    const-string v11, "CustomStartingWindow the app is removed. remove xml also"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 577
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    return-void
.end method

.method private restoreFromXml(Ljava/io/File;I)V
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # I

    .prologue
    .line 651
    const/4 v8, 0x0

    .line 652
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 653
    .local v0, "deleteFile":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, "fileName":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 658
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 659
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 661
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "event":I
    const/4 v10, 0x1

    if-eq v3, v10, :cond_7

    const/4 v10, 0x3

    if-eq v3, v10, :cond_7

    .line 662
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "name":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v3, v10, :cond_0

    .line 664
    const-string v10, "resId"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 665
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 666
    const/4 v10, 0x4

    if-ne v3, v10, :cond_3

    .line 667
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v7, v10, p2}, Lcom/android/server/wm/SamsungStartingWindowManager;->addCustomLayoutResId(Ljava/lang/String;II)V

    .line 668
    const-string v10, "SamsungStartingWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CustomStartingWindow restored for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 678
    .end local v3    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v8, v9

    .line 679
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v10, "SamsungStartingWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CustomStartingWindow Failing file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 680
    const/4 v0, 0x1

    .line 682
    if-eqz v8, :cond_1

    .line 684
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 688
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 650
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 670
    .restart local v3    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v10, "SamsungStartingWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CustomStartingWindow there is no resId for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 681
    .end local v3    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v10

    move-object v8, v9

    .line 682
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v8, :cond_4

    .line 684
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 688
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 681
    :cond_5
    throw v10

    .line 673
    .restart local v3    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_6
    :try_start_6
    const-string v10, "SamsungStartingWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CustomStartingWindow Unknown xml event="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 682
    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    .line 684
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 688
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 685
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_7

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 681
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_5

    .line 678
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method private saveToXml(I)Ljava/io/StringWriter;
    .locals 4
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 469
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 470
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 471
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 473
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 475
    const-string v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v2, "resId"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 480
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 482
    return-object v0
.end method

.method private writeAll()V
    .locals 7

    .prologue
    .line 564
    iget-object v6, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "startingWindowPackageName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 565
    .local v4, "startingWindowPackageName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_0

    .line 568
    .end local v4    # "startingWindowPackageName":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "reverseStartingWindowPackageName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 569
    .local v2, "reverseStartingWindowPackageName":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_1

    .line 572
    .end local v2    # "reverseStartingWindowPackageName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "keyguardPreviewPackageName$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, "keyguardPreviewPackageName":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-direct {p0, v0, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    goto :goto_2

    .line 563
    .end local v0    # "keyguardPreviewPackageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeXml(Ljava/lang/String;I)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 511
    const/4 v6, 0x0

    .line 512
    .local v6, "pathFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 514
    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_0

    .line 531
    return-void

    .line 516
    :pswitch_0
    sget-object v6, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    .line 517
    .local v6, "pathFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    .line 534
    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 535
    const/4 v5, 0x0

    .line 536
    .local v5, "file":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 538
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v5

    .line 540
    .local v5, "file":Ljava/io/FileOutputStream;
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/wm/SamsungStartingWindowManager;->saveToXml(I)Ljava/io/StringWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 541
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 542
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 543
    const-string v8, "SamsungStartingWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow file wrote normally."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    .line 509
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .end local v5    # "file":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 521
    .local v6, "pathFile":Ljava/io/File;
    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_1
    sget-object v6, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowPath:Ljava/io/File;

    .line 522
    .local v6, "pathFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 526
    .local v6, "pathFile":Ljava/io/File;
    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_2
    sget-object v6, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewPath:Ljava/io/File;

    .line 527
    .local v6, "pathFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    .local v7, "resIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 554
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "file":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 555
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v5    # "file":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_2
    if-eqz v5, :cond_1

    .line 556
    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 558
    :cond_1
    const-string v8, "SamsungStartingWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow cannot write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v5    # "file":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 550
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v5    # "file":Ljava/io/FileOutputStream;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    if-eqz v5, :cond_2

    .line 551
    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 553
    :cond_2
    const-string v8, "SamsungStartingWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow Unable to parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v5    # "file":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 545
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v5    # "file":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v5, :cond_3

    .line 546
    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 548
    :cond_3
    const-string v8, "SamsungStartingWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow Unable to open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 544
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    goto :goto_4

    .line 549
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto :goto_3

    .line 554
    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NullPointerException;
    move-object v0, v1

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    goto/16 :goto_2

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCustomLayoutResId(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "type"    # I

    .prologue
    .line 367
    packed-switch p3, :pswitch_data_0

    .line 381
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/SamsungStartingWindowManager;->writeXml(Ljava/lang/String;I)V

    .line 366
    return-void

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addCustomStartingWinodwData(Ljava/lang/String;Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "ConvertedKey":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v1

    .line 147
    .local v1, "startingWindowDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-object v0
.end method

.method public canAddSamsungStartingWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 209
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v0

    .line 208
    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public canExecuteAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 10
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 908
    const-string v5, "SamsungStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow canExecuteAutoCapture  wtoken = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mStartingWindowAutoCaptureEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowAutoCaptureEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    const/4 v1, 0x0

    .line 911
    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 912
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 913
    move-object v1, v3

    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 917
    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    return v6

    .line 919
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v9, :cond_4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v9, :cond_4

    .line 920
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_3

    const/4 v2, 0x1

    .line 922
    .local v2, "possible_capture":Z
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 924
    .local v0, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-nez v0, :cond_5

    return v6

    .line 920
    .end local v0    # "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    .end local v2    # "possible_capture":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "possible_capture":Z
    goto :goto_1

    .line 919
    .end local v2    # "possible_capture":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "possible_capture":Z
    goto :goto_1

    .line 926
    .restart local v0    # "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    :cond_5
    const-string v5, "SamsungStartingWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomStartingWindow canExecuteAutoCapture  possible_capture = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 927
    const-string v8, " isStartingWindowRemoveRequested="

    .line 926
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 927
    iget-boolean v8, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isStartingWindowRemoveRequested:Z

    .line 926
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 928
    const-string v8, " isTransitionFinished="

    .line 926
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 928
    iget-boolean v8, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isTransitionFinished:Z

    .line 926
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-boolean v5, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isStartingWindowRemoveRequested:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isTransitionFinished:Z

    :goto_2
    and-int/2addr v2, v5

    .line 931
    .local v2, "possible_capture":Z
    if-eqz v2, :cond_6

    .line 932
    iput-boolean v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isStartingWindowRemoveRequested:Z

    .line 933
    iput-boolean v6, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isTransitionFinished:Z

    .line 936
    :cond_6
    return v2

    .local v2, "possible_capture":Z
    :cond_7
    move v5, v6

    .line 929
    goto :goto_2
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/SamsungStartingWindowManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager$2;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method public decodeImageFromRawFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "imageFilePathToRestore"    # Ljava/io/File;

    .prologue
    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1998
    .local v4, "before":J
    if-nez p1, :cond_0

    .line 1999
    const-string v17, "SamsungStartingWindowManager"

    const-string v18, "CustomStartingWindow decodeImageToRawFile failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/16 v17, 0x0

    return-object v17

    .line 2003
    :cond_0
    const/16 v16, 0x0

    .line 2004
    .local v16, "width":I
    const/4 v13, 0x0

    .line 2006
    .local v13, "height":I
    const/4 v6, 0x0

    .line 2008
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    .line 2012
    .local v10, "fileIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    .end local v10    # "fileIn":Ljava/io/FileInputStream;
    .local v11, "fileIn":Ljava/io/FileInputStream;
    const/16 v17, 0x4

    :try_start_1
    move/from16 v0, v17

    new-array v15, v0, [B

    .line 2014
    .local v15, "w":[B
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 2015
    .local v12, "h":[B
    const/16 v17, 0x0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v15, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 2016
    const/16 v17, 0x0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v12, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 2018
    invoke-static {v15}, Lcom/android/server/wm/SamsungStartingWindowManager;->byteArrayToInt([B)I

    move-result v16

    .line 2019
    invoke-static {v12}, Lcom/android/server/wm/SamsungStartingWindowManager;->byteArrayToInt([B)I

    move-result v13

    .line 2021
    mul-int v17, v16, v13

    mul-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2022
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 2023
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2038
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2040
    .local v14, "restoredBitmap":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v14, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2046
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow encodeImageToRawFile : Decoding finished. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v4

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return-object v14

    .line 2024
    .end local v11    # "fileIn":Ljava/io/FileInputStream;
    .end local v12    # "h":[B
    .end local v14    # "restoredBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "w":[B
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "fileIn":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 2025
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "fileIn":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_0
    if-eqz v10, :cond_1

    .line 2027
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2031
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 2033
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow decodeImageToRawFile IOException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2034
    const/16 v17, 0x0

    return-object v17

    .line 2028
    :catch_1
    move-exception v9

    .local v9, "exception":Ljava/io/IOException;
    goto :goto_1

    .line 2035
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_2
    throw v17

    .line 2041
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "fileIn":Ljava/io/FileInputStream;
    .restart local v12    # "h":[B
    .restart local v14    # "restoredBitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "w":[B
    :catch_2
    move-exception v8

    .line 2042
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/16 v17, 0x0

    return-object v17

    .line 2035
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "h":[B
    .end local v14    # "restoredBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "w":[B
    :catchall_1
    move-exception v17

    move-object v10, v11

    .end local v11    # "fileIn":Ljava/io/FileInputStream;
    .local v10, "fileIn":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2024
    .end local v10    # "fileIn":Ljava/io/FileInputStream;
    .restart local v11    # "fileIn":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "fileIn":Ljava/io/FileInputStream;
    .restart local v10    # "fileIn":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public doNotRemoveStartingWindow()Z
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public encodeImageToRawFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 18
    .param p1, "bitmapToSave"    # Landroid/graphics/Bitmap;
    .param p2, "imageFilePathToSave"    # Ljava/io/File;

    .prologue
    .line 1955
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1957
    .local v2, "before":J
    if-nez p1, :cond_0

    .line 1958
    const-string v13, "SamsungStartingWindowManager"

    const-string v14, "encodeImageToRawFile : bitmap is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const/4 v13, 0x0

    return v13

    .line 1962
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1963
    .local v12, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1964
    .local v11, "height":I
    invoke-static {v12}, Lcom/android/server/wm/SamsungStartingWindowManager;->intToByteArray(I)[B

    move-result-object v6

    .line 1965
    .local v6, "byteWidth":[B
    invoke-static {v11}, Lcom/android/server/wm/SamsungStartingWindowManager;->intToByteArray(I)[B

    move-result-object v5

    .line 1966
    .local v5, "byteHeight":[B
    mul-int v13, v12, v11

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1967
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1968
    const/4 v9, 0x0

    .line 1972
    .local v9, "fileOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .local v10, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1974
    invoke-virtual {v10, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1975
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 1976
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1991
    const-string v13, "SamsungStartingWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CustomStartingWindow encodeImageToRawFile : Encoding finished. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const/4 v13, 0x1

    return v13

    .line 1977
    .end local v10    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 1978
    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_0
    if-eqz v9, :cond_1

    .line 1980
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1984
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1986
    const-string v13, "SamsungStartingWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CustomStartingWindow encodeImageToRawFile IOException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1987
    const/4 v13, 0x0

    return v13

    .line 1981
    :catch_1
    move-exception v8

    .local v8, "exception":Ljava/io/IOException;
    goto :goto_1

    .line 1988
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_2
    throw v13

    .restart local v10    # "fileOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10    # "fileOut":Ljava/io/FileOutputStream;
    .local v9, "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1977
    .end local v9    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOut":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public executeAutoCapture(Landroid/view/IApplicationToken;)Z
    .locals 3
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 942
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->executeAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    return v1
.end method

.method public executeAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 22
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v17

    .line 947
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 948
    .local v14, "before":J
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mWidth:I

    .line 949
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mHeight:I

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mRotation:I

    .line 952
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomStartingWindow executeAutoCapture  AppWindowToken = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v18, 0x0

    .line 955
    .local v18, "mainWin":Lcom/android/server/wm/WindowState;
    const/16 v5, 0x7530

    .local v5, "minLayer":I
    const/4 v6, 0x0

    .line 957
    .local v6, "maxLayer":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v18    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v21, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 958
    .local v20, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 960
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 961
    move-object/from16 v18, v20

    .line 964
    :cond_1
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v19

    .line 965
    .local v19, "surfaceLayer":I
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeAutoCapture w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move/from16 v0, v19

    if-ge v0, v5, :cond_2

    .line 968
    move/from16 v5, v19

    .line 971
    :cond_2
    move/from16 v0, v19

    if-le v0, v6, :cond_0

    .line 972
    move/from16 v6, v19

    goto :goto_0

    .line 976
    .end local v19    # "surfaceLayer":I
    .end local v20    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomStartingWindow executeAutoCapture mainWin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxLayer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 982
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mHeight:I

    .line 984
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mRotation:I

    .line 983
    const/4 v7, 0x0

    .line 982
    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 990
    .local v13, "captureData":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 992
    .local v16, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeAutoCapture key= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartingWindowTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->-get0(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v7, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/SamsungStartingWindowManager;->mRotation:I

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 995
    .local v7, "saveThread":Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->setPriority(I)V

    .line 996
    invoke-virtual {v7}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->start()V

    .line 998
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 999
    const-string v2, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeAutoCapture  capture time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v2, 0x1

    return v2

    .line 979
    .end local v7    # "saveThread":Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;
    .end local v13    # "captureData":Landroid/graphics/Bitmap;
    .end local v16    # "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method

.method public getCustomStartingBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "userId"    # I

    .prologue
    .line 299
    invoke-direct {p0, p3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 328
    .local v0, "customStartingWindowData":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 445
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartingWindowLayoutResId(Ljava/lang/String;II)I
    .locals 6
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "rot"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 401
    invoke-direct {p0, p3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 402
    .local v0, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-eqz v0, :cond_6

    .line 403
    const/4 v2, 0x0

    .line 405
    .local v2, "resId":I
    if-eq p2, v4, :cond_0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 406
    :cond_0
    iget v3, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    if-eqz v3, :cond_2

    .line 407
    iget v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfReverseLayout:I

    .line 408
    const-string v3, "SamsungStartingWindowManager"

    const-string v4, "CustomStartingWindow reverse layout will show"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 419
    :cond_1
    :goto_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v5

    .line 421
    .local v1, "pkgName":Ljava/lang/String;
    if-lez v2, :cond_3

    .line 422
    return v2

    .line 413
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    goto :goto_0

    .line 425
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_3
    iget v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->resIdOfDefaultLayout:I

    .line 426
    if-lez v2, :cond_5

    .line 427
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 428
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 430
    :cond_4
    return v2

    .line 432
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 433
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeCustomLayoutResId(Ljava/lang/String;I)V

    .line 438
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_6
    return v5
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)Z
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 336
    const-string v1, "SamsungStartingWindowManager"

    const-string v2, "CustomStartingWindow Constructed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sput-object p2, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    .line 338
    invoke-direct {p0}, Lcom/android/server/wm/SamsungStartingWindowManager;->restoreAllFromXml()V

    .line 340
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const-string v1, "SamsungStartingWindowManager"

    const-string v2, "CustomStartingWindow custom image dir created"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 354
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 356
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.samsung.feature.device_category_phone_low_end"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    const-string v1, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 356
    if-eqz v1, :cond_2

    .line 358
    :cond_1
    sput-boolean v3, Lcom/android/server/wm/SamsungStartingWindowManager;->SUPPORT_CUSTOM_STARTING_WINDOW_LAYOUT_RESID_FOR_MASS:Z

    .line 362
    :cond_2
    return v3
.end method

.method public isCustomBitmapLoaded(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 396
    invoke-direct {p0, p2}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 397
    .local v0, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    goto :goto_0
.end method

.method public isFixedOrientation(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 219
    .local v1, "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 220
    :cond_0
    return v3

    .line 222
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 224
    .local v0, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    iget-boolean v2, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isFixedOrientation:Z

    return v2

    .line 227
    .end local v0    # "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    :cond_2
    return v3
.end method

.method public removeCustomLayoutResId(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 449
    packed-switch p2, :pswitch_data_0

    .line 463
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeXml(Ljava/lang/String;I)V

    .line 448
    return-void

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mReverseStartingWindowResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mKeyguardPreviewResId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeWindowLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 0
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 231
    return-void
.end method

.method public setCustomBitmapLoaded(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 388
    invoke-direct {p0, p3}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 389
    .local v0, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-eqz v0, :cond_0

    .line 390
    iput-boolean p2, v0, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->bitmapIsLoaded:Z

    .line 391
    const/4 v1, 0x1

    return v1

    .line 393
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setCustomImage(Ljava/lang/String;Landroid/graphics/Bitmap;II)Z
    .locals 22
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/graphics/Bitmap;
    .param p3, "taskUserId"    # I
    .param p4, "rotation"    # I

    .prologue
    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 698
    .local v4, "before":J
    const/high16 v17, 0x100000

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 699
    .local v6, "buf":[B
    const/4 v12, 0x0

    .line 701
    .local v12, "fis":Ljava/io/FileInputStream;
    sget-object v17, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 702
    const-string v17, "SamsungStartingWindowManager"

    const-string v18, "CustomStartingWindow mkdir for getFD. but it\'s weird"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget-object v17, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 706
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 707
    .local v15, "key":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    sget-object v17, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    .local v10, "file":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 709
    .end local v10    # "file":Ljava/io/File;
    .local v11, "file":Ljava/io/File;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 710
    .local v16, "mCustomStartingWindowData":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v10

    .line 712
    .end local v11    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    const/4 v13, 0x0

    .line 714
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 715
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 716
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 718
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 720
    :cond_2
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 732
    if-eqz v14, :cond_3

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 740
    :cond_3
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow setImage done normally "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v4

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v17, 0x1

    return v17

    .line 733
    :catch_0
    move-exception v9

    .line 734
    .local v9, "e":Ljava/lang/Exception;
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v17, 0x0

    return v17

    .line 726
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    .line 727
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    const/16 v17, 0x0

    .line 732
    if-eqz v13, :cond_4

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 728
    :cond_4
    return v17

    .line 733
    :catch_2
    move-exception v9

    .line 734
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v17, 0x0

    return v17

    .line 723
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 724
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 725
    const/16 v17, 0x0

    .line 732
    if-eqz v13, :cond_5

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 725
    :cond_5
    return v17

    .line 733
    :catch_4
    move-exception v9

    .line 734
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v17, 0x0

    return v17

    .line 729
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 732
    :goto_2
    if-eqz v13, :cond_6

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 729
    :cond_6
    throw v17

    .line 733
    :catch_5
    move-exception v9

    .line 734
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v17, "SamsungStartingWindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v17, 0x0

    return v17

    .line 729
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 723
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 726
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z
    .locals 26
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "taskUserId"    # I
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "rotation"    # I

    .prologue
    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 751
    .local v4, "before":J
    const/high16 v22, 0x100000

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 752
    .local v6, "buf":[B
    const/4 v15, 0x0

    .line 753
    .local v15, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 754
    .local v7, "customImage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 755
    .local v8, "customImageQualifier":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 756
    const-string v22, "com.samsung.android.startingwindow.IMAGE_PATH"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, "customImage":Ljava/lang/String;
    const-string v22, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 760
    .end local v7    # "customImage":Ljava/lang/String;
    .end local v8    # "customImageQualifier":Ljava/lang/String;
    :cond_0
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    .line 761
    const-string v22, "SamsungStartingWindowManager"

    const-string v23, "CustomStartingWindow custom image not support app"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v22, 0x0

    return v22

    .line 766
    :cond_1
    sget-object v22, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2

    .line 767
    const-string v22, "SamsungStartingWindowManager"

    const-string v23, "CustomStartingWindow mkdir for getFD. but it\'s weird"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget-object v22, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowPath:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 771
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 772
    .local v19, "key":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    sget-object v22, Lcom/android/server/wm/SamsungStartingWindowManager;->mCustomImageSystemPath:Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 773
    .local v13, "file":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v14, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 780
    .end local v13    # "file":Ljava/io/File;
    .local v14, "file":Ljava/io/File;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v21

    .line 781
    .local v21, "startingWindowDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 782
    .local v9, "customStartingWindowData":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-nez v9, :cond_3

    .line 783
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "customStartingWindowData does not added="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v9, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .end local v9    # "customStartingWindowData":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 785
    .restart local v9    # "customStartingWindowData":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_3
    move/from16 v0, p5

    invoke-virtual {v9, v8, v14, v0}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v13

    .line 789
    .end local v14    # "file":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    if-nez p4, :cond_6

    .line 790
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 791
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 792
    sget-boolean v22, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v22, :cond_4

    const-string v22, "SamsungStartingWindowManager"

    const-string v23, "CustomStartingWindow custom image remove"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_4
    :goto_0
    const/16 v22, 0x1

    return v22

    .line 794
    :cond_5
    sget-boolean v22, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v22, :cond_4

    const-string v22, "SamsungStartingWindowManager"

    const-string v23, "CustomStartingWindow custom image remove called. but there is no file."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    :cond_6
    const/16 v17, 0x0

    .line 801
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 802
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 803
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 805
    :cond_7
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v16, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v20

    .line 807
    .local v20, "size":I
    sget-boolean v22, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v22, :cond_8

    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow file size is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "KB"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_8
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 809
    .local v18, "fos":Ljava/io/FileOutputStream;
    const/16 v22, 0x0

    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 818
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    if-eqz v16, :cond_9

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 819
    :cond_9
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 826
    :cond_a
    sget-boolean v22, Lcom/android/server/wm/SamsungStartingWindowManager;->SAFE_DEBUG:Z

    if-eqz v22, :cond_11

    .line 827
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow setImage done normally "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v4

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_1
    const/16 v22, 0x1

    return v22

    .line 820
    :catch_0
    move-exception v12

    .line 821
    .local v12, "e":Ljava/lang/Exception;
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v22, 0x0

    return v22

    .line 813
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "size":I
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 814
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v11, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 815
    const/16 v22, 0x0

    .line 818
    if-eqz v15, :cond_b

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 819
    :cond_b
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 815
    :cond_c
    return v22

    .line 820
    :catch_2
    move-exception v12

    .line 821
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v22, 0x0

    return v22

    .line 810
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    .line 811
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to copy file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 812
    const/16 v22, 0x0

    .line 818
    if-eqz v15, :cond_d

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 819
    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 812
    :cond_e
    return v22

    .line 820
    :catch_4
    move-exception v12

    .line 821
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v22, 0x0

    return v22

    .line 816
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    .line 818
    :goto_4
    if-eqz v15, :cond_f

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 819
    :cond_f
    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 816
    :cond_10
    throw v22

    .line 820
    :catch_5
    move-exception v12

    .line 821
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v22, "SamsungStartingWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CustomStartingWindow failed to close streams "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v22, 0x0

    return v22

    .line 829
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "size":I
    :cond_11
    const-string v22, "SamsungStartingWindowManager"

    const-string v23, "CustomStartingWindow setImage done normally"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 816
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "size":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v22

    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "size":I
    :catchall_2
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 810
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "size":I
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v10

    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "size":I
    :catch_7
    move-exception v10

    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 813
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "size":I
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "size":I
    :catch_9
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public setCustomStartingWindowParams(Landroid/os/Bundle;)Z
    .locals 30
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    const/4 v5, 0x0

    return v5

    .line 840
    :cond_0
    const-string v5, "CUSTOM_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, "key":Ljava/lang/String;
    const-string v5, "SELECT_CUSTOM_IMAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 842
    .local v22, "selectCustomImage":Ljava/lang/String;
    const-string v5, "SET_EMPTY_REGION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 844
    .local v23, "setEmptyRegion":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 845
    const/4 v5, 0x0

    return v5

    .line 848
    :cond_1
    const-string v5, "SamsungStartingWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCustomStartingWindowParams key="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 849
    const-string v27, " selectCustomImage="

    .line 848
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 853
    .local v14, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-eqz v14, :cond_5

    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    if-eqz v5, :cond_5

    .line 854
    if-nez v22, :cond_2

    const-string v22, ""

    .end local v22    # "selectCustomImage":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->-set0(Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;Ljava/lang/String;)Ljava/lang/String;

    .line 855
    if-eqz v23, :cond_5

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 858
    .local v10, "before":J
    const-string v5, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 860
    .local v19, "rectString":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v5, v0

    rem-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_4

    .line 861
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget v5, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    if-eqz v5, :cond_3

    .line 862
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v5, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 863
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    .line 867
    :cond_3
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    iput v0, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    .line 869
    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 870
    .local v16, "leftDP":I
    const/4 v5, 0x1

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 871
    .local v24, "topDP":I
    const/4 v5, 0x2

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 872
    .local v20, "rightDP":I
    const/4 v5, 0x3

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 874
    .local v12, "bottomDP":I
    move/from16 v0, v16

    int-to-float v5, v0

    sget-object v26, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    move/from16 v17, v0

    .line 875
    .local v17, "leftPx":I
    move/from16 v0, v24

    int-to-float v5, v0

    sget-object v26, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    .line 876
    .local v25, "topPx":I
    move/from16 v0, v20

    int-to-float v5, v0

    sget-object v26, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v0, v5

    move/from16 v21, v0

    .line 877
    .local v21, "rightPx":I
    int-to-float v5, v12

    sget-object v26, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v13, v5

    .line 879
    .local v13, "bottomPx":I
    const/4 v15, 0x0

    .line 881
    .local v15, "i":I
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 882
    .local v18, "rect":Landroid/graphics/Rect;
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    iget-object v5, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->hole:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v5, v14, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;->numHole:I

    .line 886
    const-string v5, "SamsungStartingWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CustomStartingWindow Auto Capture support app, DP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v5, "SamsungStartingWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CustomStartingWindow Auto Capture support app, PX "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v12    # "bottomDP":I
    .end local v13    # "bottomPx":I
    .end local v15    # "i":I
    .end local v16    # "leftDP":I
    .end local v17    # "leftPx":I
    .end local v18    # "rect":Landroid/graphics/Rect;
    .end local v20    # "rightDP":I
    .end local v21    # "rightPx":I
    .end local v24    # "topDP":I
    .end local v25    # "topPx":I
    :cond_4
    const-string v5, "ROTATION_EMPTY_REGION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 891
    .local v9, "rotationEmptyRegion":I
    const-string v5, "USER_ID_EMPTY_REGION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 893
    .local v8, "userIdEmptyRegion":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->getCustomStartingBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 895
    .local v7, "captureData":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;-><init>(Lcom/android/server/wm/SamsungStartingWindowManager;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 896
    .local v4, "saveThread":Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->setPriority(I)V

    .line 897
    invoke-virtual {v4}, Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;->start()V

    .line 900
    const-string v5, "SamsungStartingWindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "make hole on exist capture. "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v10

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v4    # "saveThread":Lcom/android/server/wm/SamsungStartingWindowManager$SaveCapturedScreenshot;
    .end local v7    # "captureData":Landroid/graphics/Bitmap;
    .end local v8    # "userIdEmptyRegion":I
    .end local v9    # "rotationEmptyRegion":I
    .end local v10    # "before":J
    .end local v19    # "rectString":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    return v5
.end method

.method updateSetting()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 1005
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1008
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "samsungstarting_autocapture"

    .line 1007
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowAutoCaptureEnabled:I

    .line 1011
    const-string v1, "samsungstarting_DoNotRemoveStartingWindow"

    .line 1010
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mDoNotRemoveStartingWindow:Z

    .line 1014
    const-string v1, "SamsungStartingWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSetting  samsungstarting_autocapture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/SamsungStartingWindowManager;->mStartingWindowAutoCaptureEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {p0, v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->getStartingWindowDataMapForUser(I)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1016
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensPortFile:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1017
    sget-object v1, Lcom/android/server/wm/SamsungStartingWindowManager;->mCapturedScreensLandFile:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1020
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/captured"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/SamsungStartingWindowManager;->removeFolder(Ljava/io/File;)V

    .line 1004
    return-void

    :cond_0
    move v1, v2

    .line 1010
    goto :goto_0
.end method
