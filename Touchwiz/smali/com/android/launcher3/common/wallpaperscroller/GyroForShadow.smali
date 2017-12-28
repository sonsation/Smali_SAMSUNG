.class public final Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;
.super Ljava/lang/Object;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_VALUE:J = 0x11e1a300L

.field private static final DISABLE_INTERRUPT_GYRO:I = 0x0

.field private static final ENABLE_INTERRUPT_GYRO:I = 0x1

.field private static final INTERRUPT_GYRO_SERVICE:I = 0x30

.field private static SCONTEXT_SERVICE:Ljava/lang/String; = null

.field public static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b

.field private static final SOURCE_TYPE_SCONTEXT:I = 0x2

.field private static final SOURCE_TYPE_SENSOR:I = 0x1

.field private static final SOURCE_TYPE_UNKNOWN:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TILT_RANGE_HALF:F = 5.0f

.field private static final TILT_RANGE_MAX:F = 10.0f

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapX:F

.field private static mMapY:F

.field private static mMobileKeyboardScreenHeight:F

.field private static mPrevX:F

.field private static mPrevY:F

.field private static mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private static mScreenHeight:F

.field private static mScreenWidth:F

.field private static mSourceType:I

.field private static mStartTimestamp:J

.field private static mTiltRangeX:F

.field private static mTiltRangeY:F

.field private static mWallpaperRangeX:F

.field private static mWallpaperRangeY:F

.field private static sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static final sel:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    .line 48
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    .line 49
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    .line 50
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMobileKeyboardScreenHeight:F

    .line 51
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    .line 52
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    .line 53
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    .line 54
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    .line 55
    sput v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeX:F

    .line 56
    sput v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSourceType:I

    .line 76
    const-string v0, "scontext"

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->SCONTEXT_SERVICE:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$3;

    invoke-direct {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 204
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    .line 205
    sput v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    .line 206
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mStartTimestamp:J

    .line 244
    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$4;

    invoke-direct {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->changeTiltXYRange(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1000()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeX:F

    return v0
.end method

.method static synthetic access$1100()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    return v0
.end method

.method static synthetic access$200()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mStartTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->updateMap(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    return v0
.end method

.method static synthetic access$700()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    return v0
.end method

.method static synthetic access$800()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    return v0
.end method

.method private static changeTiltXYRange(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 277
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 278
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    .line 279
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    .line 281
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMobileKeyboardScreenHeight:F

    .line 286
    :cond_0
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    float-to-double v4, v4

    const-wide v6, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v4, v6

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    .line 287
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    float-to-double v4, v4

    const-wide v6, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v4, v6

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    .line 289
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 291
    :cond_1
    sget-object v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v5, "GyroForShadow is not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 295
    :cond_2
    sget-object v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/launcher3/util/WallpaperUtils;->getWallpaperDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 296
    .local v3, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_3

    .line 297
    sget-object v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v5, "changeTiltXYRange(), WallpaperManager getDrawable() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 302
    .local v2, "srcImageWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 303
    .local v1, "srcImageHeight":I
    const/high16 v4, 0x3f000000    # 0.5f

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeX:F

    .line 304
    const/high16 v4, 0x3f000000    # 0.5f

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    .line 306
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    const/high16 v4, 0x45200000    # 2560.0f

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    .line 311
    :cond_4
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_5

    .line 312
    const/high16 v4, 0x3f000000    # 0.5f

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    mul-float/2addr v4, v5

    int-to-float v5, v2

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenWidth:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeX:F

    .line 314
    :cond_5
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    if-le v1, v4, :cond_6

    .line 315
    const/high16 v4, 0x3f000000    # 0.5f

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    mul-float/2addr v4, v5

    int-to-float v5, v1

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    .line 318
    :cond_6
    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 319
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMobileKeyboardScreenHeight:F

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mScreenHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mWallpaperRangeY:F

    .line 322
    :cond_7
    sget-object v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/launcher3/util/WallpaperUtils;->releaseWallpaperDrawable(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static checkScontext(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 187
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.feature.scontext_lite"

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    :cond_0
    sget-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v2, :cond_1

    .line 190
    sget-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->SCONTEXT_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 194
    :cond_1
    sget-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    .line 195
    .local v0, "isAvailable":Z
    if-eqz v0, :cond_2

    .line 196
    const/4 v2, 0x2

    sput v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSourceType:I

    .line 202
    .end local v0    # "isAvailable":Z
    :goto_0
    return-void

    .line 201
    :cond_2
    const/4 v2, 0x1

    sput v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSourceType:I

    goto :goto_0
.end method

.method private static computeOffset(FFFFF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "start1"    # F
    .param p2, "stop1"    # F
    .param p3, "start2"    # F
    .param p4, "stop2"    # F

    .prologue
    .line 272
    sub-float v0, p4, p3

    sub-float v1, p0, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static initialize(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    .line 83
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->SCONTEXT_SERVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 85
    invoke-static {p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->checkScontext(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;

    const-string v1, "changeTiltXYRange"

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$1;->start()V

    .line 92
    return-void
.end method

.method static pauseSContext()V
    .locals 4

    .prologue
    .line 171
    sget-object v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>(I)V

    .line 173
    .local v0, "disableAttribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    sget-object v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 175
    :cond_0
    return-void
.end method

.method static pauseSensor()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->stopSensor()V

    .line 133
    :cond_0
    return-void
.end method

.method static registerListener(Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;Z)V
    .locals 1
    .param p0, "aListener"    # Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;
    .param p1, "init"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    sput v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    .line 139
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->startSensor()V

    .line 143
    return-void
.end method

.method static resumeSContext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    sget-object v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>(I)V

    .line 162
    .local v0, "enableAttribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    sget-object v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mStartTimestamp:J

    .line 164
    sput v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    .line 165
    sput v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    .line 166
    sput v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    sput v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    .line 168
    :cond_0
    return-void
.end method

.method static resumeSensor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->startSensor()V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x11e1a300

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mStartTimestamp:J

    .line 120
    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    .line 121
    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    .line 122
    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    .line 124
    :cond_0
    return-void
.end method

.method private static startSensor()V
    .locals 2

    .prologue
    .line 101
    const v0, 0x1002b

    .line 103
    .local v0, "sensorType":I
    new-instance v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$2;

    invoke-direct {v1}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$2;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$2;->start()V

    .line 111
    return-void
.end method

.method private static stopSensor()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method static supportScontext(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSourceType:I

    if-nez v0, :cond_0

    .line 179
    invoke-static {p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->checkScontext(Landroid/content/Context;)V

    .line 182
    :cond_0
    sget v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mSourceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static unregisterListener(Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;)V
    .locals 1
    .param p0, "aListener"    # Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

    .prologue
    .line 146
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->stopSensor()V

    .line 150
    :cond_0
    return-void
.end method

.method private static updateMap(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p0, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v7, 0x40a00000    # 5.0f

    .line 209
    iget-object v4, p0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v0, v4, v5

    .line 210
    .local v0, "gyroX":F
    iget-object v4, p0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 212
    .local v1, "gyroY":F
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    const v5, 0x3d8f5c29    # 0.07f

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    .line 213
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    const v5, 0x3d8f5c29    # 0.07f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    .line 215
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 217
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_0

    .line 218
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    sub-float v2, v10, v4

    .line 222
    .local v2, "tempX":F
    :goto_0
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    neg-float v4, v4

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    invoke-static {v2, v7, v8, v4, v5}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->computeOffset(FFFFF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    .line 229
    .end local v2    # "tempX":F
    :goto_1
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    .line 231
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_2

    .line 232
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    sub-float v3, v10, v4

    .line 236
    .local v3, "tempY":F
    :goto_2
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    neg-float v4, v4

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    invoke-static {v3, v7, v8, v4, v5}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->computeOffset(FFFFF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    .line 242
    .end local v3    # "tempY":F
    :goto_3
    return-void

    .line 220
    :cond_0
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    sub-float v2, v9, v4

    .restart local v2    # "tempX":F
    goto :goto_0

    .line 225
    .end local v2    # "tempX":F
    :cond_1
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevX:F

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    neg-float v5, v5

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeX:F

    invoke-static {v4, v7, v8, v5, v6}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->computeOffset(FFFFF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapX:F

    goto :goto_1

    .line 234
    :cond_2
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    sub-float v3, v9, v4

    .restart local v3    # "tempY":F
    goto :goto_2

    .line 239
    .end local v3    # "tempY":F
    :cond_3
    sget v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mPrevY:F

    sget v5, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    neg-float v5, v5

    sget v6, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mTiltRangeY:F

    invoke-static {v4, v7, v8, v5, v6}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->computeOffset(FFFFF)F

    move-result v4

    sput v4, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->mMapY:F

    goto :goto_3
.end method
