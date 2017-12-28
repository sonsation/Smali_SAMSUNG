.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# instance fields
.field private mCachedWallpaper:Landroid/graphics/Bitmap;

.field private mCachedWallpaperUserId:I

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mIsCachedWallpaperForDeX:Z

.field private final mService:Landroid/app/IWallpaperManager;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    return-void
.end method

.method private checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    const-string/jumbo v14, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v14, v9, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v3, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v7, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDeviceDensity deviceRotation="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " deviceHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " deviceWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bitmapHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bitmapWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v14, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    :goto_0
    if-nez v8, :cond_1

    const/4 v14, 0x1

    if-eq v5, v14, :cond_0

    const/4 v14, 0x3

    if-ne v5, v14, :cond_1

    :cond_0
    iget v4, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_1
    const/4 v12, 0x0

    if-ge v6, v2, :cond_3

    if-ge v4, v1, :cond_3

    int-to-float v14, v6

    int-to-float v15, v2

    div-float/2addr v14, v15

    int-to-float v15, v4

    int-to-float v0, v1

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Landroid/app/WallpaperManager$Globals;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "resize scale down.:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v6, :cond_0

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentWallpaperLocked userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v7, 0x1

    invoke-interface {v6, p0, v7, v5, p2}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-object v9

    :catchall_0
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method private getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 22

    const/4 v13, 0x0

    sget-boolean v19, Landroid/app/WallpaperManager;->SUPPORT_DEFAULT_INFINITY_WALLPAPER:Z

    if-eqz v19, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->-wrap1(Landroid/app/WallpaperManager;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v13

    :cond_0
    if-nez v13, :cond_1

    invoke-static/range {p1 .. p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v13

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Landroid/app/WallpaperManager$Globals;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/app/IWallpaperManager;->isDesktopMode()Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v4, "com.sec.android.app.desktoplauncher"

    const-string v3, "dex_wallpaper_001"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    const-string v19, "drawable"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_2

    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Landroid/app/WallpaperManager$Globals;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v18

    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Landroid/app/WallpaperManager$Globals;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v12

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v8, v0, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    :cond_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getDefaultWallpaper(), can\'t find resource = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    :try_start_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v0, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/app/WallpaperManager$Globals;->checkDeviceDensity(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v19

    :catch_0
    move-exception v9

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "getDefaultWallpaper(), can\'t find DesktopLauncher"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v10

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "getDefaultWallpaper(), can\'t check DesktopMode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v11

    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Can\'t decode stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_4
    const/16 v19, 0x0

    return-object v19

    :catchall_0
    move-exception v19

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19
.end method

.method static resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v0, v3

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method forgetLoadedWallpaper()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;ZII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Landroid/app/WallpaperManager$Globals;

    move-result-object v4

    iget-object v4, v4, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v4}, Landroid/app/IWallpaperManager;->isDesktopMode()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    if-eqz v4, :cond_1

    if-nez v3, :cond_3

    :cond_1
    iget-boolean v4, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, p1, p4}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    iput-boolean v3, p0, Landroid/app/WallpaperManager$Globals;->mIsCachedWallpaperForDeX:Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_3
    :try_start_5
    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v4, p4, :cond_2

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peekWallpaperBitmap() cached image height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_2
    move-exception v2

    :try_start_6
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No memory load current wallpaper"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    monitor-exit p0

    if-eqz p2, :cond_6

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-enter p0

    :try_start_7
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    :cond_5
    return-object v0

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_6
    return-object v6
.end method
