.class Lcom/android/launcher3/common/view/LiveIconFactory;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;,
        Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;
    }
.end annotation


# static fields
.field private static final AVAILABLE_INTERVAL:J = 0xbb8L

.field private static final STATE_BUSY:I = 0x1

.field private static final STATE_IDLE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLiveIconLoadCompleteListener:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;

.field private mLiveIconLoadTask:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;

.field private mPackageName:Ljava/lang/String;

.field private mRequestedTime:J

.field private mState:I

.field private mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    const-class v0, Lcom/android/launcher3/common/view/LiveIconFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/LiveIconFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mState:I

    .line 403
    iput-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mPackageName:Ljava/lang/String;

    .line 404
    iput-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/launcher3/common/view/LiveIconFactory;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mPackageName:Ljava/lang/String;

    .line 410
    iput-object p2, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 411
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/view/LiveIconFactory;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/LiveIconFactory;
    .param p1, "x1"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mState:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/android/launcher3/common/view/LiveIconFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/view/LiveIconFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/LiveIconFactory;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/LiveIconFactory;)Lcom/android/launcher3/common/compat/UserHandleCompat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/LiveIconFactory;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/common/view/LiveIconFactory;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/LiveIconFactory;
    .param p1, "x1"    # J

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mRequestedTime:J

    return-wide p1
.end method

.method private isInInterval()Z
    .locals 6

    .prologue
    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 479
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mRequestedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 449
    iget-object v3, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mPackageName:Ljava/lang/String;

    .line 453
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 455
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    .local v1, "liveIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz v5, :cond_0

    .line 458
    iget-object v5, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mUserHandleCompat:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-static {v1, p1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 468
    .local v2, "liveIconBitmap":Landroid/graphics/Bitmap;
    return-object v2

    .line 461
    .end local v1    # "liveIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "liveIconBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "TAG"

    const-string v6, "not found set default app icon"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "TAG"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x10d0000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "liveIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public requestCreate(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 422
    invoke-direct {p0}, Lcom/android/launcher3/common/view/LiveIconFactory;->isInInterval()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 426
    :cond_1
    iget v3, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mState:I

    if-nez v3, :cond_0

    .line 430
    iput v2, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mState:I

    .line 432
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v0

    .line 433
    .local v0, "threadPool":Lcom/android/launcher3/util/threadpool/ThreadPool;
    new-instance v1, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;-><init>(Lcom/android/launcher3/common/view/LiveIconFactory;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mLiveIconLoadTask:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;

    .line 434
    new-instance v1, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;-><init>(Lcom/android/launcher3/common/view/LiveIconFactory;)V

    iput-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mLiveIconLoadCompleteListener:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;

    .line 435
    iget-object v1, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mLiveIconLoadTask:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadTask;

    iget-object v3, p0, Lcom/android/launcher3/common/view/LiveIconFactory;->mLiveIconLoadCompleteListener:Lcom/android/launcher3/common/view/LiveIconFactory$LiveIconLoadCompleteListener;

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move v1, v2

    .line 436
    goto :goto_0
.end method
