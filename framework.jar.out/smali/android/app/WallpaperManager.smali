.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$2;,
        Landroid/app/WallpaperManager$3;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$SubUserWallpaperChecker;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field private static final ANDROID_RES_PREFIX:Ljava/lang/String; = "android.resource://android/drawable/"

.field private static final CHAMELEON_WALLPAPER_PATH:Ljava/lang/String; = "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

.field private static final CINEMATIC_DEFAULT_THUMB_NAME:Ljava/lang/String; = "cinematic_thumbnail"

.field private static final CINEMATIC_DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "cinematic_lock"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final DEFAULT_KWP_SIZE:I = 0x1

.field private static final DEFAULT_THUMB_NAME:Ljava/lang/String; = "default_thumb"

.field private static final DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file:/"

.field public static final FLAG_LOCK:I = 0x2

.field public static final FLAG_SYSTEM:I = 0x1

.field private static final HOME_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/wallpaper/default_wallpaper/"

.field private static final HOME_OMC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/wallpaper/drawable/"

.field private static final KEYGUARD_DEFAULT_THUMB_NAME:Ljava/lang/String; = "keyguard_default_wallpaper_thumbnail"

.field private static final KEYGUARD_DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "keyguard_default_wallpaper"

.field public static final KWP_TYPE_ANIMATED:I = 0x4

.field public static final KWP_TYPE_DEFAULT:I = 0x0

.field public static final KWP_TYPE_ERROR:I = -0x1

.field public static final KWP_TYPE_MOTION:I = 0x1

.field public static final KWP_TYPE_PRELOAD_MOTION:I = 0x2

.field private static final LOCK_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/wallpaper/"

.field private static final LOCK_OMC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/wallpaper/lockscreen/drawable/"

.field private static final MULTI_CSC_WALLPAPER_DIR_PATH:Ljava/lang/String; = "/system/csc_contents/"

.field private static final PROPERTY_OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field public static final SUPPORT_CINEMATIC_WALLPAPER:Z

.field public static final SWP_TYPE_CUSTOM:I = 0x0

.field public static final SWP_TYPE_PRELOAD:I = 0x1

.field public static final SWP_TYPE_THEME:I = 0x2

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEMUI_RES_PREFIX:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/"

.field private static TAG:Ljava/lang/String; = null

.field private static final THEME_STORE_URI:Ljava/lang/String; = "content://com.samsung.android.thememanager.wallpaper"

.field private static final THUMBNAIL:I = 0x0

.field private static final WALLPAPER:I = 0x1

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static mDefaultFileNameFilter:Ljava/io/FilenameFilter;

.field private static mDefaultLockscreenFileNameFilter:Ljava/io/FilenameFilter;

.field private static mGuestDefaultFileNameFilter:Ljava/io/FilenameFilter;

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Landroid/app/WallpaperManager;->mGuestDefaultFileNameFilter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string/jumbo v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 103
    sput-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SEAMLESS_WALLPAPER"

    .line 266
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    .line 552
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 1953
    new-instance v0, Landroid/app/WallpaperManager$1;

    invoke-direct {v0}, Landroid/app/WallpaperManager$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mDefaultFileNameFilter:Ljava/io/FilenameFilter;

    .line 1962
    new-instance v0, Landroid/app/WallpaperManager$2;

    invoke-direct {v0}, Landroid/app/WallpaperManager$2;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mDefaultLockscreenFileNameFilter:Ljava/io/FilenameFilter;

    .line 1973
    new-instance v0, Landroid/app/WallpaperManager$3;

    invoke-direct {v0}, Landroid/app/WallpaperManager$3;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mGuestDefaultFileNameFilter:Ljava/io/FilenameFilter;

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 105
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 564
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 563
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

    .line 1324
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1326
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1327
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1323
    :cond_0
    return-void
.end method

.method private generateBitmap(I)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "resid"    # I

    .prologue
    .line 2445
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "generateBitmap"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    const/4 v1, 0x0

    .line 2448
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2449
    .local v9, "resources":Landroid/content/res/Resources;
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 2450
    .local v8, "resourceName":Ljava/lang/String;
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "resourceName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v12, -0x1

    .line 2453
    .local v12, "themeResourceId":I
    const/4 v13, 0x0

    .line 2454
    .local v13, "themeResources":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2455
    const/4 v11, 0x0

    .line 2456
    .local v11, "themePackage":Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2457
    .local v3, "colon":I
    if-lez v3, :cond_0

    .line 2458
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2461
    .end local v11    # "themePackage":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 2462
    .local v7, "ident":Ljava/lang/String;
    const/16 v15, 0x2f

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 2463
    .local v10, "slash":I
    if-lez v10, :cond_1

    .line 2464
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2467
    .end local v7    # "ident":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    .line 2468
    .local v14, "type":Ljava/lang/String;
    if-lez v3, :cond_2

    if-lez v10, :cond_2

    sub-int v15, v10, v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 2469
    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v8, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 2472
    .end local v14    # "type":Ljava/lang/String;
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    if-eqz v14, :cond_3

    .line 2474
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2475
    const/16 v16, 0x4

    .line 2474
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2476
    .local v2, "c":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2477
    .local v13, "themeResources":Landroid/content/res/Resources;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 2485
    .end local v2    # "c":Landroid/content/Context;
    .end local v3    # "colon":I
    .end local v10    # "slash":I
    .end local v13    # "themeResources":Landroid/content/res/Resources;
    :cond_3
    :goto_0
    :try_start_2
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "themeResourceId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    if-eqz v13, :cond_4

    if-lez v12, :cond_4

    .line 2488
    invoke-static {v13, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2493
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v12    # "themeResourceId":I
    :cond_4
    :goto_1
    return-object v1

    .line 2480
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "colon":I
    .restart local v8    # "resourceName":Ljava/lang/String;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "slash":I
    .restart local v12    # "themeResourceId":I
    :catch_0
    move-exception v5

    .line 2481
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Resource not found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2490
    .end local v3    # "colon":I
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "slash":I
    .end local v12    # "themeResourceId":I
    :catch_1
    move-exception v6

    .line 2491
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "Can\'t decode file"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2478
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "colon":I
    .restart local v8    # "resourceName":Ljava/lang/String;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "slash":I
    .restart local v12    # "themeResourceId":I
    :catch_2
    move-exception v4

    .line 2479
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Package name "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " not found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;
    .locals 4
    .param p0, "flag"    # I
    .param p1, "additionalCheck"    # Landroid/app/WallpaperManager$SubUserWallpaperChecker;

    .prologue
    .line 2024
    const/4 v0, 0x0

    .line 2025
    .local v0, "cscFile":Ljava/io/File;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 2026
    invoke-static {p1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v0

    .line 2035
    .local v0, "cscFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2036
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "csc wallpaper return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_1
    return-object v0

    .line 2028
    .local v0, "cscFile":Ljava/io/File;
    :cond_2
    const-string/jumbo v1, "/system/csc_contents/"

    .line 2029
    sget-object v2, Landroid/app/WallpaperManager;->mDefaultLockscreenFileNameFilter:Ljava/io/FilenameFilter;

    .line 2028
    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    .line 2030
    .local v0, "cscFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 2031
    const-string/jumbo v1, "/system/wallpaper/"

    .line 2032
    sget-object v2, Landroid/app/WallpaperManager;->mDefaultLockscreenFileNameFilter:Ljava/io/FilenameFilter;

    .line 2031
    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCSCWallpaperFile(Landroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;
    .locals 5
    .param p0, "additionalCheck"    # Landroid/app/WallpaperManager$SubUserWallpaperChecker;

    .prologue
    .line 2042
    const/4 v0, 0x0

    .line 2045
    .local v0, "cscFile":Ljava/io/File;
    const-string/jumbo v2, "ro.config.wallpaper"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2047
    invoke-static {v1}, Landroid/app/WallpaperManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2051
    .end local v0    # "cscFile":Ljava/io/File;
    :cond_0
    if-nez v0, :cond_1

    .line 2052
    const-string/jumbo v2, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    invoke-static {v2}, Landroid/app/WallpaperManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2056
    :cond_1
    if-nez v0, :cond_3

    .line 2058
    const-string/jumbo v2, "/system/csc_contents/"

    sget-object v3, Landroid/app/WallpaperManager;->mDefaultFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    .line 2061
    .local v0, "cscFile":Ljava/io/File;
    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 2062
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {p0, v2}, Landroid/app/WallpaperManager$SubUserWallpaperChecker;->checkSubUserCSCFile(I)Ljava/io/File;

    move-result-object v0

    .line 2066
    :cond_2
    if-nez v0, :cond_3

    .line 2067
    const-string/jumbo v2, "/system/wallpaper/default_wallpaper/"

    sget-object v3, Landroid/app/WallpaperManager;->mDefaultFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    .line 2070
    .end local v0    # "cscFile":Ljava/io/File;
    :cond_3
    if-eqz v0, :cond_4

    .line 2071
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "csc wallpaper return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_4
    return-object v0
.end method

.method private getDefaultName(II)Ljava/lang/String;
    .locals 4
    .param p1, "flag"    # I
    .param p2, "type"    # I

    .prologue
    .line 2256
    invoke-static {}, Landroid/app/WallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 2257
    .local v0, "currentDeviceColor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2258
    .local v1, "defaultName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManager;->getName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, "defaultName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2261
    .local v1, "defaultName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManager;->getName(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2137
    const-string/jumbo v2, "ro.config.wallpaper_component"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2138
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2139
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2140
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 2141
    return-object v0

    .line 2145
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    const v2, 0x104003e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2147
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2148
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 2149
    return-object v0

    .line 2153
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-object v3
.end method

.method private static getDefaultWallpaperFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1987
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    .line 1988
    .local v0, "omcFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1989
    return-object v0

    .line 1991
    :cond_0
    new-instance v1, Landroid/app/WallpaperManager$4;

    invoke-direct {v1}, Landroid/app/WallpaperManager$4;-><init>()V

    invoke-static {v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultWallpaperID(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2110
    invoke-static {}, Landroid/app/WallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v1

    .line 2111
    .local v1, "deviceColor":Ljava/lang/String;
    const-string/jumbo v0, "default_wallpaper"

    .line 2112
    .local v0, "defaultName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2115
    :cond_0
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "default wallpaper name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2118
    .local v2, "resId":I
    if-lez v2, :cond_1

    .line 2119
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultWallpaperID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    return v2

    .line 2122
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "default_wallpaper"

    const-string/jumbo v5, "drawable"

    .line 2123
    const-string/jumbo v6, "android"

    .line 2122
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2124
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no color wallpaper getDefaultWallpaperID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    return v2
.end method

.method private getDefaultWallpaperInformation(I)Landroid/os/Bundle;
    .locals 10
    .param p1, "flag"    # I

    .prologue
    .line 2222
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDefaultWallpaperInformation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2224
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2226
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getOperatorWallpaperURI(I)Ljava/lang/String;

    move-result-object v4

    .line 2227
    .local v4, "operatorWallpaperURI":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2228
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "operator wallpaper :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_0
    sget-boolean v7, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    .line 2233
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperURI(I)Ljava/lang/String;

    move-result-object v1

    .line 2234
    .local v1, "defaultWallpaperURI":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2235
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preloadDefault wallpaper :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_2
    const/4 v5, 0x0

    .line 2240
    .local v5, "preloadWallpaperURI":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2241
    const v8, 0x10700a3

    .line 2240
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 2242
    .local v6, "wallpaperList":[Ljava/lang/String;
    const/4 v2, 0x0

    .end local v5    # "preloadWallpaperURI":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 2243
    aget-object v7, v6, v2

    invoke-direct {p0, p1, v7}, Landroid/app/WallpaperManager;->getPreloadWallpaperURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2244
    .local v5, "preloadWallpaperURI":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2245
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    sget-object v7, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preload wallpaper :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2251
    .end local v1    # "defaultWallpaperURI":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "preloadWallpaperURI":Ljava/lang/String;
    .end local v6    # "wallpaperList":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "paramKeyUriList"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2252
    return-object v0
.end method

.method private getDefaultWallpaperURI(I)Ljava/lang/String;
    .locals 7
    .param p1, "flag"    # I

    .prologue
    const/4 v6, 0x1

    .line 2319
    invoke-direct {p0, p1, v6}, Landroid/app/WallpaperManager;->getDefaultName(II)Ljava/lang/String;

    move-result-object v1

    .line 2320
    .local v1, "defaultWallpaperName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Landroid/app/WallpaperManager;->getDefaultName(II)Ljava/lang/String;

    move-result-object v2

    .line 2321
    .local v2, "defaultWallpaperThumbName":Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 2322
    .local v0, "currentDeviceColor":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2324
    .local v3, "defaultWallpaperURI":Ljava/lang/String;
    if-ne p1, v6, :cond_0

    .line 2325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://android/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2326
    const-string/jumbo v6, "?locType=preloadDefault"

    .line 2325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2326
    const-string/jumbo v6, ";"

    .line 2325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2326
    const-string/jumbo v6, "android.resource://android/drawable/"

    .line 2325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2347
    .local v3, "defaultWallpaperURI":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2329
    .local v3, "defaultWallpaperURI":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, ""

    .line 2330
    .local v4, "type":Ljava/lang/String;
    sget-boolean v5, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v5, :cond_3

    .line 2331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&type=seamless&colorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2343
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://com.android.systemui/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2344
    const-string/jumbo v6, "?locType=preloadDefault"

    .line 2343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2344
    const-string/jumbo v6, ";"

    .line 2343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2344
    const-string/jumbo v6, "android.resource://com.android.systemui/drawable/"

    .line 2343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "defaultWallpaperURI":Ljava/lang/String;
    goto :goto_0

    .line 2334
    .local v3, "defaultWallpaperURI":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "&type=seamless&colorInfo=black"

    goto :goto_1

    .line 2336
    :cond_3
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&type=cinematic&colorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2340
    :cond_4
    const-string/jumbo v4, "&type=cinematic&colorInfo=black"

    goto :goto_1
.end method

.method private static getDeviceColor()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2100
    const-string/jumbo v0, ""

    .line 2102
    .local v0, "deviceColor":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getDeviceColor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2106
    :goto_0
    return-object v0

    .line 2103
    :catch_0
    move-exception v1

    .line 2104
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 2077
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2078
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2079
    return-object v0

    .line 2081
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    const-string/jumbo v0, "wallpaper"

    .line 572
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    const/4 v6, 0x0

    .line 792
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 794
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 795
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 796
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 797
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 798
    .local v2, "cropWidth":F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 799
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 807
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    .line 801
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 802
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 803
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 804
    .local v0, "cropHeight":F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 805
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private getName(II)Ljava/lang/String;
    .locals 2
    .param p1, "flag"    # I
    .param p2, "type"    # I

    .prologue
    .line 2267
    const/4 v0, 0x0

    .line 2268
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2269
    if-nez p2, :cond_0

    .line 2270
    const-string/jumbo v0, "default_thumb"

    .line 2283
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2272
    .local v0, "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "default_wallpaper"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 2275
    .local v0, "name":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_3

    .line 2276
    sget-boolean v1, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "cinematic_thumbnail"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 2277
    .local v0, "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "keyguard_default_wallpaper_thumbnail"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 2279
    .local v0, "name":Ljava/lang/String;
    :cond_3
    sget-boolean v1, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v1, :cond_4

    const-string/jumbo v0, "cinematic_lock"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 2280
    .local v0, "name":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "keyguard_default_wallpaper"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getOMCWallpaperFile(I)Ljava/io/File;
    .locals 6
    .param p0, "flag"    # I

    .prologue
    .line 2004
    const/4 v0, 0x0

    .line 2005
    .local v0, "omcFile":Ljava/io/File;
    const-string/jumbo v3, "persist.sys.omc_respath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, "omcResourcePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2007
    .local v2, "omcWallpaperDirPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2008
    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/wallpaper/drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2010
    .local v2, "omcWallpaperDirPath":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->mDefaultFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    .line 2015
    .local v0, "omcFile":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_0

    .line 2016
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "omc wallpaper return: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    .end local v0    # "omcFile":Ljava/io/File;
    .end local v2    # "omcWallpaperDirPath":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 2012
    .local v0, "omcFile":Ljava/io/File;
    .local v2, "omcWallpaperDirPath":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/wallpaper/lockscreen/drawable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2013
    .local v2, "omcWallpaperDirPath":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->mDefaultLockscreenFileNameFilter:Ljava/io/FilenameFilter;

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    .local v0, "omcFile":Ljava/io/File;
    goto :goto_0
.end method

.method private static getOperatorFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 6
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 2085
    const/4 v0, 0x0

    .line 2086
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v2, "wallpaperDir":Ljava/io/File;
    invoke-virtual {v2, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 2088
    .local v3, "wallpapers":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 2089
    const/4 v1, 0x0

    .end local v0    # "file":Ljava/io/File;
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2090
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2091
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 2096
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 2089
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOperatorWallpaperURI(I)Ljava/lang/String;
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 2303
    const/4 v1, 0x0

    .line 2304
    .local v1, "operatorWallpaperURI":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    .line 2305
    .local v0, "operatorWallpaper":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 2306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2307
    const-string/jumbo v3, "?locType=omc"

    .line 2306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2315
    .end local v1    # "operatorWallpaperURI":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2309
    .restart local v1    # "operatorWallpaperURI":Ljava/lang/String;
    :cond_1
    invoke-static {p1, v2}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v0

    .line 2310
    if-eqz v0, :cond_0

    .line 2311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2312
    const-string/jumbo v3, "?locType=csc"

    .line 2311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "operatorWallpaperURI":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPreloadWallpaperURI(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "flag"    # I
    .param p2, "colorCode"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v7}, Landroid/app/WallpaperManager;->getName(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2352
    .local v1, "preloadWallpaperName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v8}, Landroid/app/WallpaperManager;->getName(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2353
    .local v0, "preloadThumbName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2354
    .local v2, "preloadWallpaperURI":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Landroid/app/WallpaperManager;->getDefaultName(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2355
    invoke-direct {p0, p1, v1}, Landroid/app/WallpaperManager;->getResourceID(ILjava/lang/String;)I

    move-result v3

    .line 2356
    .local v3, "resId":I
    if-lez v3, :cond_0

    .line 2357
    if-ne p1, v7, :cond_1

    .line 2358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://android/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2359
    const-string/jumbo v6, "?locType=preload;"

    .line 2358
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2359
    const-string/jumbo v6, "android.resource://android/drawable/"

    .line 2358
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2373
    .end local v2    # "preloadWallpaperURI":Ljava/lang/String;
    .end local v3    # "resId":I
    :cond_0
    :goto_0
    return-object v2

    .line 2361
    .restart local v2    # "preloadWallpaperURI":Ljava/lang/String;
    .restart local v3    # "resId":I
    :cond_1
    const-string/jumbo v4, ""

    .line 2362
    .local v4, "type":Ljava/lang/String;
    sget-boolean v5, Landroid/app/WallpaperManager;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v5, :cond_3

    .line 2363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&type=seamless&colorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2367
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://com.android.systemui/drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2368
    const-string/jumbo v6, "?locType=preload"

    .line 2367
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2368
    const-string/jumbo v6, ";"

    .line 2367
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2368
    const-string/jumbo v6, "android.resource://com.android.systemui/drawable/"

    .line 2367
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "preloadWallpaperURI":Ljava/lang/String;
    goto :goto_0

    .line 2364
    .local v2, "preloadWallpaperURI":Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&type=cinematic&colorInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getResourceID(ILjava/lang/String;)I
    .locals 6
    .param p1, "flag"    # I
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 2287
    const/4 v1, 0x0

    .line 2288
    .local v1, "resId":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 2289
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "android"

    invoke-virtual {v3, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2299
    :goto_0
    return v1

    .line 2292
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2293
    .local v2, "systemUIContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "drawable"

    .line 2294
    const-string/jumbo v5, "com.android.systemui"

    .line 2293
    invoke-virtual {v3, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2295
    .end local v2    # "systemUIContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 2296
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 556
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 555
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLiveWallpaper()Z
    .locals 1

    .prologue
    .line 2709
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2710
    const/4 v0, 0x1

    return v0

    .line 2712
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .prologue
    const/4 v9, 0x0

    .line 1887
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    .line 1892
    return-object v9

    .line 1894
    :cond_0
    const-string/jumbo v7, "ro.config.wallpaper"

    .line 1895
    .local v7, "whichProp":Ljava/lang/String;
    const v0, 0x108029c

    .line 1918
    .local v0, "defaultResId":I
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "openDefaultWallpaper()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v5, 0x0

    .line 1921
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile()Ljava/io/File;

    move-result-object v1

    .line 1922
    .local v1, "defaultWallpaper":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 1924
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 1931
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 1932
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 1935
    :cond_2
    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v8}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1936
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "WallpaperService not running"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Landroid/os/DeadSystemException;

    invoke-direct {v9}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1925
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1926
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getDefaultWallpaperFile error:"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1940
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_1
    sget-object v8, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v8}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/app/IWallpaperManager;->setSWPTypePreload(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1949
    :goto_1
    return-object v5

    .line 1943
    :catch_1
    move-exception v4

    .line 1944
    .local v4, "e":Ljava/lang/SecurityException;
    sget-object v8, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1941
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 1942
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
.end method

.method private sendDefaultWallpaperURIToTheme()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2207
    invoke-direct {p0}, Landroid/app/WallpaperManager;->sendLockWallpaperURIToTheme()V

    .line 2208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->getDefaultWallpaperInformation(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private sendLockWallpaperURIToTheme()V
    .locals 6

    .prologue
    .line 2212
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperInformation(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2213
    .local v1, "lockscreenBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "content://com.samsung.android.thememanager.wallpaper"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2215
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "putLockScreenList()"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :goto_0
    return-void

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .locals 15
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1227
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1228
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1232
    :cond_0
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isLiveWallpaper()Z

    move-result v14

    .line 1233
    .local v14, "isLiveWallpaper":Z
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v6, "result":Landroid/os/Bundle;
    new-instance v8, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v8, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1236
    .local v8, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    .line 1237
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1236
    const/4 v2, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v9, p5

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1239
    .local v11, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_1

    .line 1240
    const/4 v12, 0x0

    .line 1242
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v13, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    const/16 v2, 0x5a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1244
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 1245
    invoke-virtual {v8}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1247
    :try_start_3
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1251
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_2

    .line 1252
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    .line 1251
    if-eqz v14, :cond_3

    .line 1253
    :cond_2
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1259
    :cond_3
    const-string/jumbo v1, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1246
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .line 1247
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1246
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1255
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    .line 1256
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1246
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZLjava/lang/String;ZZ)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "isAnimated"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "needBackup"    # Z
    .param p6, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2620
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2621
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2625
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpenThemeWallpaper isAnimated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2626
    const-string/jumbo v2, " packageName="

    .line 2625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2627
    const-string/jumbo v2, " needBackup="

    .line 2625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2628
    const-string/jumbo v2, " isDefault="

    .line 2625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    if-eqz p5, :cond_1

    .line 2632
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->backupLockWallpaper()V

    .line 2635
    :cond_1
    if-eqz p3, :cond_2

    .line 2636
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Landroid/app/IWallpaperManager;->setAnimatedWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :goto_0
    return-void

    .line 2638
    :cond_2
    if-eqz p6, :cond_3

    .line 2639
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->initLockWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2644
    :catch_0
    move-exception v6

    .line 2645
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2641
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setResource(III)I
    .locals 18
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1101
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1105
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/app/WallpaperManager;->isLiveWallpaper()Z

    move-result v15

    .line 1106
    .local v15, "isLiveWallpaper":Z
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1107
    .local v7, "result":Landroid/os/Bundle;
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1109
    .local v9, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1111
    .local v17, "resources":Landroid/content/res/Resources;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v8, p2

    move/from16 v10, p3

    .line 1111
    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1114
    .local v12, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_1

    .line 1115
    const/4 v13, 0x0

    .line 1116
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 1118
    .local v16, "ok":Z
    :try_start_1
    new-instance v14, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v14, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1122
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 1123
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1127
    :try_start_3
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1131
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "ok":Z
    :cond_1
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 1132
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 1131
    if-eqz v15, :cond_3

    .line 1133
    :cond_2
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1139
    :cond_3
    const-string/jumbo v2, "android.service.wallpaper.extra.ID"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 1124
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "ok":Z
    :catchall_0
    move-exception v2

    .line 1127
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1124
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1135
    .end local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "ok":Z
    .end local v17    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v11

    .line 1136
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1124
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "ok":Z
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I
    .locals 15
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1396
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1397
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1401
    :cond_0
    invoke-direct {p0}, Landroid/app/WallpaperManager;->isLiveWallpaper()Z

    move-result v14

    .line 1402
    .local v14, "isLiveWallpaper":Z
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1403
    .local v6, "result":Landroid/os/Bundle;
    new-instance v8, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v8, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1405
    .local v8, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    .line 1406
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1405
    const/4 v2, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v9, p5

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1408
    .local v11, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v11, :cond_1

    .line 1409
    const/4 v12, 0x0

    .line 1411
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v13, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1413
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 1414
    invoke-virtual {v8}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1416
    :try_start_3
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1420
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_2

    .line 1421
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    .line 1420
    if-eqz v14, :cond_3

    .line 1422
    :cond_2
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->copyFileToWallpaperFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1428
    :cond_3
    const-string/jumbo v1, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1415
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .line 1416
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1415
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1424
    .end local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    .line 1425
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1415
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v11    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionTime"    # Ljava/lang/String;
    .param p6, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 2391
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .local v0, "backupManager":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2392
    invoke-virtual/range {v0 .. v7}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2390
    return-void
.end method

.method public static startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 2383
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 2384
    .local v0, "backupManager":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    return-void
.end method

.method public static startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I
    .param p2, "pathValue"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "securityLevel"    # I
    .param p5, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 2408
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .local v0, "restoreManager":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 2409
    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2407
    return-void
.end method

.method public static startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pathValue"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 2400
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    .line 2401
    .local v0, "restoreManager":Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    return-void
.end method

.method private final validateRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 1853
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1868
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 1871
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1872
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 1867
    :cond_1
    return-void
.end method

.method public clearAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2418
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 2417
    return-void
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 1678
    return-void
.end method

.method public clearWallpaper(II)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1690
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1691
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1695
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    return-void

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1835
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 1836
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    .line 1835
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    return-void

    .line 1837
    :catch_0
    move-exception v6

    .line 1838
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 947
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 946
    return-void
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2679
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2680
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2684
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getAnimatedPkgName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2685
    :catch_0
    move-exception v0

    .line 2686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmapAsUser(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapAsUser(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 880
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 604
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, p1

    .line 616
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    .line 636
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 635
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .locals 30
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .prologue
    .line 657
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 658
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Landroid/os/DeadSystemException;

    invoke-direct {v6}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 662
    :cond_0
    const/4 v5, 0x1

    move/from16 v0, p6

    if-eq v0, v5, :cond_1

    const/4 v5, 0x2

    move/from16 v0, p6

    if-eq v0, v5, :cond_1

    .line 663
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Must request exactly one kind of wallpaper"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 667
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 668
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 670
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move/from16 v0, p6

    invoke-static {v5, v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v29

    .line 671
    .local v29, "wpStream":Ljava/io/InputStream;
    if-nez v29, :cond_2

    .line 672
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "default wallpaper stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v5, 0x0

    return-object v5

    .line 675
    :cond_2
    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 676
    .local v17, "is":Ljava/io/InputStream;
    if-lez p1, :cond_3

    if-gtz p2, :cond_4

    .line 677
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 678
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 684
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_4
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 685
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 686
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 687
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_6

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_6

    .line 688
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 689
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 698
    .local v4, "inHeight":I
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move/from16 v0, p6

    invoke-static {v5, v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 702
    .restart local v17    # "is":Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 703
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 704
    if-eqz p3, :cond_7

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 705
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 714
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_0
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 715
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_8

    .line 718
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v5, 0x0

    return-object v5

    .line 691
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_6
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v5, 0x0

    return-object v5

    .line 708
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :cond_7
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 709
    .local v18, "left":F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 710
    .local v24, "right":F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 711
    .local v28, "top":F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 712
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 723
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_8
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    .line 724
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    .line 723
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 727
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    .line 729
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 734
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_1
    const/4 v11, 0x0

    .line 735
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_a

    .line 737
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 738
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_9

    .line 739
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 741
    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 742
    .local v11, "crop":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 745
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_a
    if-nez v11, :cond_c

    .line 748
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move/from16 v0, p6

    invoke-static {v5, v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 749
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 750
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_b

    .line 752
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 754
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 755
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_c

    .line 756
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 757
    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 758
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 756
    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 762
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_c
    if-nez v11, :cond_d

    .line 763
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v5, 0x0

    return-object v5

    .line 730
    .restart local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catch_0
    move-exception v15

    .line 731
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 768
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15    # "e":Ljava/io/IOException;
    :cond_d
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    .line 769
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_f

    .line 770
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 771
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 772
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 773
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 774
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    .line 775
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 774
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 776
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    .line 777
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 778
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 779
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 780
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 781
    move-object/from16 v11, v27

    .line 785
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 9
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 1018
    if-nez p1, :cond_0

    .line 1019
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Image URI must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1022
    :cond_0
    const-string/jumbo v6, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1023
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Image URI must be of the content scheme type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1027
    :cond_1
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1029
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v0, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1030
    .local v0, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1033
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1035
    .local v3, "homeIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000

    .line 1034
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1036
    .local v5, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    .line 1037
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1041
    .local v1, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1042
    return-object v0

    .line 1047
    .end local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1048
    const v7, 0x1040072

    .line 1047
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1052
    .restart local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1053
    return-object v0

    .line 1057
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getDefaultWallpaperInformation()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2203
    invoke-direct {p0}, Landroid/app/WallpaperManager;->sendDefaultWallpaperURIToTheme()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 3

    .prologue
    .line 1556
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1557
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1561
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDesiredMinimumWidth()I
    .locals 3

    .prologue
    .line 1530
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1531
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1535
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 591
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 592
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 593
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 594
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 595
    return-object v1

    .line 597
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 843
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 844
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 845
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v3}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    return-object v1

    .line 847
    :cond_0
    return-object v3
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 578
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperType()I
    .locals 3

    .prologue
    .line 2524
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2525
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2529
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2530
    :catch_0
    move-exception v0

    .line 2531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMotionWallpaperPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2582
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2583
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2587
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getMotionWallpaperPkgName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPreloadWallpaperColorCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2554
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2555
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2559
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2560
    :catch_0
    move-exception v0

    .line 2561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 899
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperFile(IIII)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "kwpType"    # I
    .param p4, "index"    # I

    .prologue
    .line 923
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must request exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 928
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 932
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v3, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IWallpaperManager;->getWallpaperIndexOf(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;III)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 934
    .end local v3    # "outParams":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 935
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getWallpaperId(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 983
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    .line 993
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 994
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 997
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 3

    .prologue
    .line 957
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 958
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1
.end method

.method public hasResourceWallpaper(I)Z
    .locals 5
    .param p1, "resid"    # I

    .prologue
    .line 1502
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1503
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Landroid/os/DeadSystemException;

    invoke-direct {v4}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1507
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1508
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1510
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isSameWithCallingPackageName()Z
    .locals 3

    .prologue
    .line 2695
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2696
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2700
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isSameWithCallingPackageName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2701
    :catch_0
    move-exception v0

    .line 2702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSetWallpaperAllowed()Z
    .locals 3

    .prologue
    .line 1811
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1812
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1816
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWallpaperBackupEligible()Z
    .locals 4

    .prologue
    .line 2182
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2183
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2187
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2188
    :catch_0
    move-exception v0

    .line 2189
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v1, 0x0

    return v1
.end method

.method public isWallpaperSupported()Z
    .locals 3

    .prologue
    .line 1791
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1792
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1796
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyCompletePurchase()V
    .locals 3

    .prologue
    .line 2665
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2666
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2670
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->cleanUpBackupLockWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    return-void

    .line 2671
    :catch_0
    move-exception v0

    .line 2672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 820
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 821
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 822
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 823
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 824
    return-object v1

    .line 826
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v6
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 858
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 859
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 860
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    return-object v1

    .line 862
    :cond_0
    return-object v5
.end method

.method public restoreLockWallpaper()V
    .locals 3

    .prologue
    .line 2651
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2652
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2656
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->restoreLockWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    return-void

    .line 2657
    :catch_0
    move-exception v0

    .line 2658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semSetAnimatedLockscreenWallpaper(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "openThemePackageName"    # Ljava/lang/String;
    .param p2, "needBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2608
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/WallpaperManager;->setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZLjava/lang/String;ZZ)V

    .line 2607
    return-void
.end method

.method public semSetResource(II)V
    .locals 0
    .param p1, "resid"    # I
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    return-void
.end method

.method public semSetStream(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1777
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 1778
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1777
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    return-void

    .line 1780
    :catch_0
    move-exception v8

    .line 1781
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .locals 6
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 1160
    return-void
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1664
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    return-void

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1640
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1641
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1638
    return-void
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .prologue
    .line 2163
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2164
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2169
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2170
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMotionWallpaper(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2568
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2569
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2573
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setMotionWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    return-void

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "needBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2599
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/app/WallpaperManager;->setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZLjava/lang/String;ZZ)V

    .line 2598
    return-void
.end method

.method public setOpenThemeWallpaper(Z)V
    .locals 7
    .param p1, "needBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2614
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/WallpaperManager;->setOpenThemeWallpaper(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZLjava/lang/String;ZZ)V

    .line 2613
    return-void
.end method

.method public setPreloadWallpaper(ILjava/lang/String;)V
    .locals 3
    .param p1, "preloadType"    # I
    .param p2, "colorCode"    # Ljava/lang/String;

    .prologue
    .line 2540
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2541
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2545
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IWallpaperManager;->setPreloadWallpaper(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    return-void

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setResource(II)I
    .locals 1
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setResource(III)I

    move-result v0

    return v0
.end method

.method public setResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1076
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 1075
    return-void
.end method

.method public setResourceAll(I)V
    .locals 5
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2426
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setResourceAll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->generateBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2431
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2434
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2435
    const-string/jumbo v3, "android.wallpaper.settings_systemui_transparency"

    const/4 v4, 0x2

    .line 2434
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :goto_0
    return-void

    .line 2436
    :catch_0
    move-exception v1

    .line 2437
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can\'t put value of SETTINGS_SYSTEMUI_TRANSPARENCY"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2440
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "theme bitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1389
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 1318
    return-void
.end method

.method public setStream(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-void
.end method

.method public varargs setStreamMotion(Landroid/graphics/Rect;[Ljava/io/InputStream;)I
    .locals 19
    .param p1, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p2, "multiBitmapData"    # [Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1457
    move-object/from16 v0, p2

    array-length v10, v0

    .line 1458
    .local v10, "length":I
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamMotion length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-direct/range {p0 .. p1}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1461
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1462
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1466
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1467
    .local v7, "result":Landroid/os/Bundle;
    new-array v13, v10, [Landroid/app/WallpaperManager$WallpaperSetCompletion;

    .line 1469
    .local v13, "completion":[Landroid/app/WallpaperManager$WallpaperSetCompletion;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 1470
    :try_start_0
    new-instance v2, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    aput-object v2, v13, v11

    .line 1471
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 1472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1473
    aget-object v9, v13, v11

    .line 1471
    const/4 v3, 0x0

    .line 1472
    const/4 v6, 0x0

    .line 1473
    const/4 v8, 0x2

    const/4 v12, 0x1

    move-object/from16 v5, p1

    .line 1471
    invoke-interface/range {v2 .. v12}, Landroid/app/IWallpaperManager;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;III)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 1474
    .local v16, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v16, :cond_1

    .line 1475
    const/16 v17, 0x0

    .line 1477
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v18, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v18, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    aget-object v2, p2, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1479
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 1480
    aget-object v2, v13, v11

    invoke-virtual {v2}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1484
    :try_start_3
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1469
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1481
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v15

    .line 1482
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v15, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1484
    :try_start_5
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1488
    .end local v15    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v14

    .line 1489
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1483
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    .line 1484
    :goto_3
    :try_start_6
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1483
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1492
    .end local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const-string/jumbo v2, "android.service.wallpaper.extra.ID"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 1483
    .restart local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1481
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v15

    .restart local v15    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1711
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1712
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1716
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    const/4 v1, 0x1

    return v1

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 1756
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1757
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1755
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1739
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 1740
    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1739
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    return-void

    .line 1742
    :catch_0
    move-exception v6

    .line 1743
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 8
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1598
    :try_start_0
    const-string/jumbo v4, "sys.max_texture_size"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1603
    .local v3, "maximumTextureSize":I
    :goto_0
    if-lez v3, :cond_1

    .line 1604
    if-gt p1, v3, :cond_0

    .line 1605
    if-le p2, v3, :cond_1

    .line 1606
    :cond_0
    int-to-float v4, p2

    int-to-float v5, p1

    div-float v0, v4, v5

    .line 1607
    .local v0, "aspect":F
    if-le p1, p2, :cond_2

    .line 1608
    move p1, v3

    .line 1609
    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int p2, v4

    .line 1617
    .end local v0    # "aspect":F
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1618
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Landroid/os/DeadSystemException;

    invoke-direct {v5}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1624
    .end local v3    # "maximumTextureSize":I
    :catch_0
    move-exception v1

    .line 1625
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1599
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1600
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "maximumTextureSize":I
    goto :goto_0

    .line 1611
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "aspect":F
    :cond_2
    move p2, v3

    .line 1612
    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int p1, v4

    goto :goto_1

    .line 1621
    .end local v0    # "aspect":F
    :cond_3
    :try_start_2
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get1(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    .line 1622
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1621
    invoke-interface {v4, p1, p2, v5}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1586
    return-void
.end method
