.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$CanvasPool;,
        Landroid/app/ApplicationPackageManager$LiveIconObject;,
        Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;,
        Landroid/app/ApplicationPackageManager$ResourceName;
    }
.end annotation


# static fields
.field private static final DEBUG_ICONS:Z = false

.field private static final DEFAULT_EPHEMERAL_COOKIE_MAX_SIZE_BYTES:I = 0x4000

.field private static final DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field public static final ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

.field private static final OPEN_THEME_APPICON_SCALE:F = 0.7f

.field private static final SCafeVersion:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final configSmartAppIconScaler:I

.field private static final disableAppIconCrop:Z

.field private static final judgePoint:[[I

.field private static final judgePointForChina:[[I

.field private static mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool; = null

.field private static mLiveIconLoaders:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static mLiveIconPackageMatchers:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final movePoint:[[I

.field private static final progress:[[I

.field private static final sDefaultFlags:I = 0x400

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;

.field private static final supportSmartIconUnify:Z


# instance fields
.field private appIconPackageName:Ljava/lang/String;

.field private applyIconUnifyFeature:I

.field volatile mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDelegates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInstaller:Landroid/content/pm/PackageInstaller;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPM:Landroid/content/pm/IPackageManager;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPermissionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsControllerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingStatusChecked:Z

.field private mSettingStatusForIconTray:Z

.field private mUserManager:Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private openThemeAppIconRange:I

.field private openThemeAppIconScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x5

    const/16 v5, 0x60

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 182
    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationPackageManager;->SCafeVersion:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_ConfigAppIconStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ApplicationPackageManager;->supportSmartIconUnify:Z

    .line 192
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_DisableAppIconCrop"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ApplicationPackageManager;->disableAppIconCrop:Z

    .line 193
    const-string/jumbo v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Landroid/app/ApplicationPackageManager;->configSmartAppIconScaler:I

    .line 198
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.tungsten_silvery.appicon"

    aput-object v1, v0, v4

    .line 199
    const-string/jumbo v1, "com.samsung.tungsten_gold.appicon"

    aput-object v1, v0, v3

    .line 200
    const-string/jumbo v1, "com.samsung.tungsten_pink.appicon"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "com.samsung.tungsten_black.appicon"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "com.samsung.colorful_indie.appicon"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 198
    sput-object v0, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 205
    sput-object v0, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    .line 208
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 207
    sput-object v0, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    .line 220
    new-instance v0, Landroid/app/ApplicationPackageManager$CanvasPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$CanvasPool;-><init>(Landroid/app/ApplicationPackageManager$CanvasPool;)V

    sput-object v0, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    .line 3186
    const/4 v0, 0x4

    new-array v0, v0, [[I

    filled-new-array {v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v4, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v7, v4}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    filled-new-array {v4, v7}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->progress:[[I

    .line 3187
    const/4 v0, 0x4

    new-array v0, v0, [[I

    filled-new-array {v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v7, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v7, v7}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    filled-new-array {v3, v7}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    .line 3188
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0x1f

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xa0

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xba

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xa0

    const/16 v2, 0xae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xba

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x1f

    const/16 v2, 0xae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v6, v5}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->judgePoint:[[I

    .line 3189
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0x11

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xaf

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xbb

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xbb

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x11

    const/16 v2, 0xaf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v6, v5}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->judgePointForChina:[[I

    .line 3892
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 3894
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3893
    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    .line 3896
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3895
    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    .line 156
    return-void
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 4
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1934
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 161
    iput-object v3, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    .line 184
    iput v1, p0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    .line 187
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    .line 188
    iput-object v3, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    .line 190
    iput-boolean v2, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    .line 1881
    iput v1, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 3899
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    .line 1936
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1937
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1935
    return-void
.end method

.method private checkAppIconThemePackage()V
    .locals 6

    .prologue
    .line 3073
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->checkSettingsForIconTray()Z

    move-result v2

    .line 3074
    .local v2, "settingStatusForIconTray":Z
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3075
    const-string/jumbo v5, "current_sec_appicon_theme_package"

    .line 3074
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3076
    .local v3, "themePackageName":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3077
    const/4 v3, 0x0

    .line 3082
    .end local v3    # "themePackageName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3083
    .local v0, "cf":Landroid/content/res/Configuration;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3084
    const/4 v3, 0x0

    .line 3090
    .end local v0    # "cf":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3091
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3092
    :cond_3
    iget v4, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 3093
    :cond_4
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 3094
    iput-object v3, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    .line 3095
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->registerAppIconInfo()V

    .line 3072
    :cond_5
    :goto_1
    return-void

    .line 3086
    :catch_0
    move-exception v1

    .line 3087
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3096
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 3097
    iget-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    if-eq v4, v2, :cond_5

    .line 3098
    :cond_7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 3099
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    .line 3100
    iput-boolean v2, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    goto :goto_1
.end method

.method private checkSettingsForIconTray()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3147
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tap_to_icon"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3148
    .local v0, "value":I
    if-ne v0, v4, :cond_0

    return v4

    .line 3150
    :cond_0
    const-string/jumbo v1, "ApplicationPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSettingsForIconTray value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    const/4 v1, 0x0

    return v1
.end method

.method static configurationChanged()V
    .locals 2

    .prologue
    .line 1928
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1929
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1930
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1927
    return-void

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/app/ContextImpl;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1633
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1635
    .local v8, "oldBounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1636
    .local v5, "copyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1637
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1639
    .end local v5    # "copyIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v5, :cond_1

    .line 1640
    move-object/from16 v5, p1

    .line 1642
    :cond_1
    instance-of v13, v5, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_4

    move-object v9, v5

    .line 1643
    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    .line 1644
    .local v9, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1645
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1653
    .end local v9    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_0
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1654
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1655
    .local v10, "scale":F
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 1656
    .local v12, "sourceWidth":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 1657
    .local v11, "sourceHeight":I
    if-lez v12, :cond_3

    if-gtz v11, :cond_5

    .line 1658
    :cond_3
    move/from16 v12, p3

    .line 1659
    move/from16 v11, p4

    .line 1660
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1674
    :goto_1
    sub-int v6, p3, v12

    .line 1675
    .local v6, "dx":I
    sub-int v7, p4, v11

    .line 1678
    .local v7, "dy":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1677
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1679
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v13, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    invoke-virtual {v13}, Landroid/app/ApplicationPackageManager$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v4

    .line 1680
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1681
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1682
    int-to-float v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    int-to-float v14, v7

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1683
    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1684
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1685
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1687
    sget-object v13, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    invoke-virtual {v13, v4}, Landroid/app/ApplicationPackageManager$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    .line 1688
    return-object v2

    .line 1646
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v10    # "scale":F
    .end local v11    # "sourceHeight":I
    .end local v12    # "sourceWidth":I
    :cond_4
    instance-of v13, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_2

    move-object v3, v5

    .line 1648
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 1649
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_2

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1663
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "scale":F
    .restart local v11    # "sourceHeight":I
    .restart local v12    # "sourceWidth":I
    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1665
    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v12

    div-float/2addr v13, v14

    move/from16 v0, p4

    int-to-float v14, v0

    int-to-float v15, v11

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1667
    int-to-float v13, v12

    mul-float/2addr v13, v10

    float-to-int v12, v13

    .line 1668
    int-to-float v13, v11

    mul-float/2addr v13, v10

    float-to-int v11, v13

    goto :goto_1
.end method

.method private getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIIF)F
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "target"    # I
    .param p5, "scale"    # F

    .prologue
    .line 3192
    sget-boolean v0, Landroid/app/ApplicationPackageManager;->supportSmartIconUnify:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3193
    invoke-direct/range {p0 .. p5}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIIF)F

    move-result v0

    return v0

    .line 3195
    :cond_0
    invoke-direct/range {p0 .. p5}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIIF)F

    move-result v0

    return v0
.end method

.method private getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIIF)F
    .locals 26
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "target"    # I
    .param p5, "scale"    # F

    .prologue
    .line 3272
    const/4 v13, 0x0

    .line 3273
    .local v13, "count":I
    const/4 v10, -0x1

    .line 3274
    .local v10, "alpha":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v21, v2, 0x2

    .line 3275
    .local v21, "smallestSide":I
    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x1

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v22, v4

    .line 3276
    .local v22, "startPoint":[[I
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 3277
    .local v3, "bmArray":[I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .line 3279
    .local v11, "colorArray":[[I
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_0

    const/16 v23, 0x1a

    .line 3281
    .local v23, "threshold":I
    :goto_0
    const/16 v17, 0x0

    .line 3282
    .local v17, "fullUp":Z
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 3283
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 3284
    mul-int v2, p2, v18

    aget-object v4, v11, v18

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3283
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3279
    .end local v17    # "fullUp":Z
    .end local v18    # "i":I
    .end local v23    # "threshold":I
    :cond_0
    const/16 v23, 0x0

    .restart local v23    # "threshold":I
    goto :goto_0

    .line 3314
    .restart local v17    # "fullUp":Z
    .restart local v18    # "i":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 3286
    :cond_2
    move/from16 v0, v21

    if-le v0, v13, :cond_9

    const/4 v2, -0x1

    if-ne v10, v2, :cond_9

    .line 3287
    const/16 v18, 0x0

    :goto_2
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 3288
    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v24, v2, v4

    .line 3289
    .local v24, "x":I
    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v25, v2, v4

    .line 3290
    .local v25, "y":I
    const/16 v16, 0x0

    .line 3291
    .local v16, "endPoint":I
    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    .line 3292
    add-int/lit8 v16, v18, 0x1

    .line 3294
    :cond_3
    const/4 v12, 0x0

    .line 3295
    .local v12, "completed":Z
    :goto_3
    if-nez v12, :cond_5

    .line 3296
    aget-object v2, v22, v16

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v24

    if-ne v0, v2, :cond_4

    aget-object v2, v22, v16

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 3297
    const/4 v12, 0x1

    .line 3299
    :cond_4
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    move/from16 v0, v23

    if-le v2, v0, :cond_7

    .line 3300
    move v10, v13

    .line 3306
    :cond_5
    const/4 v2, -0x1

    if-eq v10, v2, :cond_8

    .line 3310
    .end local v12    # "completed":Z
    .end local v16    # "endPoint":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_6
    const/16 v18, 0x0

    :goto_4
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 3311
    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 3312
    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 3310
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3303
    .restart local v12    # "completed":Z
    .restart local v16    # "endPoint":I
    .restart local v24    # "x":I
    .restart local v25    # "y":I
    :cond_7
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int v24, v24, v2

    .line 3304
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int v25, v25, v2

    goto :goto_3

    .line 3287
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 3316
    .end local v12    # "completed":Z
    .end local v16    # "endPoint":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_9
    const/4 v2, -0x1

    if-ne v10, v2, :cond_a

    .line 3317
    const/4 v10, 0x0

    .line 3319
    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_d

    .line 3320
    const/4 v2, 0x1

    aget-object v2, v22, v2

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v14, v2, 0x1

    .line 3321
    .local v14, "detectedX":I
    const/4 v2, 0x3

    aget-object v2, v22, v2

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v15, v2, 0x1

    .line 3322
    .local v15, "detectedY":I
    const/16 v19, 0x0

    .line 3323
    .local v19, "judgeCount":I
    const/16 v18, 0x0

    :goto_5
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 3324
    sget-object v2, Landroid/app/ApplicationPackageManager;->judgePoint:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-int/2addr v2, v14

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v24, v2, v4

    .line 3325
    .restart local v24    # "x":I
    sget-object v2, Landroid/app/ApplicationPackageManager;->judgePoint:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-int/2addr v2, v15

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v25, v2, v4

    .line 3326
    .restart local v25    # "y":I
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    const/16 v4, 0x1a

    if-le v2, v4, :cond_b

    add-int/lit8 v19, v19, 0x1

    .line 3323
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3328
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_c
    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_11

    .line 3329
    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, p5, v2

    if-nez v2, :cond_f

    .line 3330
    const p5, 0x3f6147ae    # 0.88f

    .line 3343
    .end local v14    # "detectedX":I
    .end local v15    # "detectedY":I
    .end local v19    # "judgeCount":I
    :cond_d
    :goto_6
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v2, v2, p5

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v5, v10, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v20, v2, v4

    .line 3344
    .local v20, "relativeScale":F
    if-eqz v17, :cond_e

    .line 3345
    const/high16 v2, 0x43480000    # 200.0f

    add-float v20, v20, v2

    .line 3347
    :cond_e
    const-string/jumbo v2, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scaled rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    return v20

    .line 3332
    .end local v20    # "relativeScale":F
    .restart local v14    # "detectedX":I
    .restart local v15    # "detectedY":I
    .restart local v19    # "judgeCount":I
    :cond_f
    sget-boolean v2, Landroid/app/ApplicationPackageManager;->disableAppIconCrop:Z

    if-nez v2, :cond_10

    sget v2, Landroid/app/ApplicationPackageManager;->configSmartAppIconScaler:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    .line 3333
    const/high16 p5, 0x3f800000    # 1.0f

    .line 3334
    const/16 v17, 0x1

    .line 3332
    goto :goto_6

    .line 3336
    :cond_10
    const p5, 0x3f2e147b    # 0.68f

    goto :goto_6

    .line 3340
    :cond_11
    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, p5, v2

    if-nez v2, :cond_12

    const p5, 0x3f70a3d7    # 0.94f

    goto/16 :goto_6

    :cond_12
    const p5, 0x3f3851ec    # 0.72f

    goto/16 :goto_6
.end method

.method private getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIIF)F
    .locals 26
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "target"    # I
    .param p5, "scale"    # F

    .prologue
    .line 3200
    const/4 v13, 0x0

    .line 3201
    .local v13, "count":I
    const/4 v10, -0x1

    .line 3202
    .local v10, "alpha":I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v21, v2, 0x2

    .line 3203
    .local v21, "smallestSide":I
    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x1

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v22, v4

    .line 3204
    .local v22, "startPoint":[[I
    mul-int v2, p2, p3

    new-array v3, v2, [I

    .line 3205
    .local v3, "bmArray":[I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .line 3207
    .local v11, "colorArray":[[I
    const/16 v23, 0x1a

    .line 3209
    .local v23, "threshold":I
    const/16 v17, 0x0

    .line 3210
    .local v17, "fullUp":Z
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 3211
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 3212
    mul-int v2, p2, v18

    aget-object v4, v11, v18

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3211
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 3242
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 3214
    :cond_1
    move/from16 v0, v21

    if-le v0, v13, :cond_8

    const/4 v2, -0x1

    if-ne v10, v2, :cond_8

    .line 3215
    const/16 v18, 0x0

    :goto_1
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 3216
    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v24, v2, v4

    .line 3217
    .local v24, "x":I
    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v25, v2, v4

    .line 3218
    .local v25, "y":I
    const/16 v16, 0x0

    .line 3219
    .local v16, "endPoint":I
    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 3220
    add-int/lit8 v16, v18, 0x1

    .line 3222
    :cond_2
    const/4 v12, 0x0

    .line 3223
    .local v12, "completed":Z
    :goto_2
    if-nez v12, :cond_4

    .line 3224
    aget-object v2, v22, v16

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v24

    if-ne v0, v2, :cond_3

    aget-object v2, v22, v16

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v25

    if-ne v0, v2, :cond_3

    .line 3225
    const/4 v12, 0x1

    .line 3227
    :cond_3
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    .line 3207
    const/16 v4, 0x1a

    .line 3227
    if-le v2, v4, :cond_6

    .line 3228
    move v10, v13

    .line 3234
    :cond_4
    const/4 v2, -0x1

    if-eq v10, v2, :cond_7

    .line 3238
    .end local v12    # "completed":Z
    .end local v16    # "endPoint":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_5
    const/16 v18, 0x0

    :goto_3
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 3239
    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 3240
    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 3238
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 3231
    .restart local v12    # "completed":Z
    .restart local v16    # "endPoint":I
    .restart local v24    # "x":I
    .restart local v25    # "y":I
    :cond_6
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int v24, v24, v2

    .line 3232
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int v25, v25, v2

    goto :goto_2

    .line 3215
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3244
    .end local v12    # "completed":Z
    .end local v16    # "endPoint":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_8
    const/4 v2, -0x1

    if-ne v10, v2, :cond_9

    .line 3245
    const/4 v10, 0x0

    .line 3247
    :cond_9
    const/4 v2, 0x1

    aget-object v2, v22, v2

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v14, v2, 0x1

    .line 3248
    .local v14, "detectedX":I
    const/4 v2, 0x3

    aget-object v2, v22, v2

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v15, v2, 0x1

    .line 3249
    .local v15, "detectedY":I
    const/16 v19, 0x0

    .line 3250
    .local v19, "judgeCount":I
    const/16 v18, 0x0

    :goto_4
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ge v0, v2, :cond_b

    .line 3251
    sget-object v2, Landroid/app/ApplicationPackageManager;->judgePointForChina:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-int/2addr v2, v14

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v24, v2, v4

    .line 3252
    .restart local v24    # "x":I
    sget-object v2, Landroid/app/ApplicationPackageManager;->judgePointForChina:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-int/2addr v2, v15

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v25, v2, v4

    .line 3253
    .restart local v25    # "y":I
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    .line 3207
    const/16 v4, 0x1a

    .line 3253
    if-le v2, v4, :cond_a

    .line 3254
    add-int/lit8 v19, v19, 0x1

    .line 3250
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3257
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_b
    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_e

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p5, v2

    if-gtz v2, :cond_e

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    .line 3258
    const/high16 p5, 0x3f800000    # 1.0f

    .line 3259
    const/16 v17, 0x1

    .line 3263
    :cond_c
    :goto_5
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float v2, v2, p5

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v5, v10, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v20, v2, v4

    .line 3264
    .local v20, "relativeScale":F
    if-eqz v17, :cond_d

    .line 3265
    const/high16 v2, 0x43480000    # 200.0f

    add-float v20, v20, v2

    .line 3267
    :cond_d
    const-string/jumbo v2, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IconUnify : scaled rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    return v20

    .line 3260
    .end local v20    # "relativeScale":F
    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_c

    .line 3261
    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_5
.end method

.method private getBadgeResIdForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3780
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3781
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 3782
    if-eqz v0, :cond_3

    .line 3783
    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    .line 3784
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v2, "KNOX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3785
    const v1, 0x10803e9

    return v1

    .line 3786
    :cond_0
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v2, "KNOX II"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3787
    const v1, 0x10803ea

    return v1

    .line 3788
    :cond_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3789
    const v1, 0x10804be

    return v1

    .line 3792
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3793
    const v1, 0x10803ba

    return v1

    .line 3796
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "tryBadgeInPlace"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3725
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3726
    .local v1, "badgedWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3727
    .local v0, "badgedHeight":I
    if-eqz p4, :cond_2

    .line 3728
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3727
    if-eqz v7, :cond_2

    move-object v7, p1

    .line 3729
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    .line 3732
    .local v4, "canBadgeInPlace":Z
    :goto_0
    if-eqz v4, :cond_3

    move-object v7, p1

    .line 3733
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3737
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3739
    .local v5, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_0

    .line 3740
    invoke-virtual {p1, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3741
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3744
    :cond_0
    if-eqz p3, :cond_6

    .line 3745
    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_1

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_4

    .line 3747
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Badge location "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3748
    const-string/jumbo v10, " not in badged drawable bounds "

    .line 3747
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3749
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3747
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canBadgeInPlace":Z
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move v4, v8

    .line 3727
    goto :goto_0

    .line 3735
    .restart local v4    # "canBadgeInPlace":Z
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 3746
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v7, v1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v7, v0, :cond_1

    .line 3751
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p2, v8, v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3753
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 3754
    iget v7, p3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3755
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3756
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 3763
    :goto_2
    if-nez v4, :cond_7

    .line 3764
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3766
    .local v6, "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_5

    move-object v3, p1

    .line 3767
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 3768
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 3771
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    return-object v6

    .line 3758
    .end local v6    # "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3759
    invoke-virtual {p2, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3760
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 3774
    :cond_7
    return-object p1
.end method

.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .prologue
    const/4 v4, 0x0

    .line 1942
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1943
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1946
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 1947
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1948
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 1958
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1961
    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 1964
    return-object v4

    .line 1942
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .prologue
    const/4 v4, 0x0

    .line 2061
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2062
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2063
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 2064
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    monitor-exit v3

    .line 2066
    return-object v0

    .line 2069
    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    monitor-exit v3

    .line 2072
    return-object v4

    .line 2061
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawableId"    # I
    .param p2, "density"    # I

    .prologue
    .line 1770
    if-gtz p2, :cond_0

    .line 1771
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1773
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getLiveIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 28
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3625
    const/16 v21, 0x0

    .line 3626
    .local v21, "pkgPath":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3628
    .local v17, "liveIconSupport":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 3629
    const/16 v23, 0x80

    .line 3628
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3630
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3631
    .local v21, "pkgPath":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    .line 3632
    .local v19, "meta":Landroid/os/Bundle;
    if-nez v19, :cond_0

    .line 3633
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Doesn\'t have metadata for LiveIcon : ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]  just show default Icon."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    const/16 v22, 0x0

    return-object v22

    .line 3636
    :cond_0
    const-string/jumbo v22, "LiveIconSupport"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 3642
    .local v17, "liveIconSupport":Z
    if-eqz v17, :cond_4

    .line 3643
    const/4 v14, 0x0

    .line 3644
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    const/4 v4, 0x0

    .line 3645
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v18, 0x0

    .line 3646
    .local v18, "m":Ljava/lang/reflect/Method;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".LiveIconLoader"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3647
    .local v13, "getLiveIconClassName":Ljava/lang/String;
    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    monitor-enter v23

    .line 3648
    :try_start_1
    sget-object v24, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    monitor-enter v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3649
    :try_start_2
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 3650
    if-eqz v21, :cond_2

    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 3651
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "we has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " class. reuse it "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/reflect/Method;

    move-object/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .end local v18    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v23

    .line 3691
    if-eqz v18, :cond_4

    .line 3693
    :try_start_4
    new-instance v16, Landroid/app/ApplicationPackageManager$LiveIconObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$LiveIconObject;-><init>(Landroid/app/ApplicationPackageManager;)V

    .line 3694
    .local v16, "liveIconObj":Landroid/app/ApplicationPackageManager$LiveIconObject;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager$LiveIconObject;->setLiveIcon(Ljava/lang/Object;)V

    .line 3695
    invoke-virtual/range {v16 .. v16}, Landroid/app/ApplicationPackageManager$LiveIconObject;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationPackageManager$LiveIconObject;

    .line 3696
    .local v5, "cloneLiveIcon":Landroid/app/ApplicationPackageManager$LiveIconObject;
    invoke-virtual {v5}, Landroid/app/ApplicationPackageManager$LiveIconObject;->getLiveIcon()Ljava/lang/Object;

    move-result-object v20

    .line 3697
    .local v20, "o":Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 3698
    check-cast v20, Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v20    # "o":Ljava/lang/Object;
    return-object v20

    .line 3637
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "cloneLiveIcon":Landroid/app/ApplicationPackageManager$LiveIconObject;
    .end local v13    # "getLiveIconClassName":Ljava/lang/String;
    .end local v16    # "liveIconObj":Landroid/app/ApplicationPackageManager$LiveIconObject;
    .end local v19    # "meta":Landroid/os/Bundle;
    .end local v21    # "pkgPath":Ljava/lang/String;
    .local v17, "liveIconSupport":Z
    :catch_0
    move-exception v6

    .line 3638
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "get application info error in getLiveIcon : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    const/16 v22, 0x0

    return-object v22

    .line 3653
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "getLiveIconClassName":Ljava/lang/String;
    .restart local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v17, "liveIconSupport":Z
    .restart local v18    # "m":Ljava/lang/reflect/Method;
    .restart local v19    # "meta":Landroid/os/Bundle;
    .restart local v21    # "pkgPath":Ljava/lang/String;
    :cond_2
    if-eqz v21, :cond_1

    :try_start_5
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 3654
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "we don\'t have "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " package path. load it"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    new-instance v15, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3657
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v15, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v22, 0x1

    :try_start_6
    move/from16 v0, v22

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 3658
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v22, "getLiveIcon"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const-class v26, Landroid/content/Context;

    const/16 v27, 0x0

    aput-object v26, v25, v27

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v18

    .line 3666
    .local v18, "m":Ljava/lang/reflect/Method;
    :try_start_7
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3667
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v15

    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    goto/16 :goto_0

    .line 3662
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v18, "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v11

    .line 3663
    .local v11, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v25, "!@call method fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3664
    const/16 v22, 0x0

    monitor-exit v23

    return-object v22

    .line 3659
    .end local v11    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 3660
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    :try_start_9
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "!@can\'t found class"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3661
    const/16 v22, 0x0

    monitor-exit v23

    return-object v22

    .line 3672
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    :cond_3
    :try_start_b
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "we don\'t have "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " package name. load it"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    new-instance v15, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3675
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v22, 0x1

    :try_start_c
    move/from16 v0, v22

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 3676
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v22, "getLiveIcon"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const-class v26, Landroid/content/Context;

    const/16 v27, 0x0

    aput-object v26, v25, v27

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v18

    .line 3684
    .local v18, "m":Ljava/lang/reflect/Method;
    :try_start_d
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    sget-object v22, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v15

    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    goto/16 :goto_0

    .line 3680
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v18, "m":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v11

    .line 3681
    .restart local v11    # "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v25, "!@call method fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v24
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3682
    const/16 v22, 0x0

    monitor-exit v23

    return-object v22

    .line 3677
    .end local v11    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v7

    .line 3678
    .restart local v7    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_f
    const-string/jumbo v22, "ApplicationPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "!@can\'t found class"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    monitor-exit v24
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3679
    const/16 v22, 0x0

    monitor-exit v23

    return-object v22

    .line 3648
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    :catchall_0
    move-exception v22

    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .end local v18    # "m":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_11
    monitor-exit v24

    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3647
    :catchall_1
    move-exception v22

    :goto_2
    monitor-exit v23

    throw v22

    .line 3712
    :catch_5
    move-exception v9

    .line 3713
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v23, "!@clone fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3714
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3715
    const/16 v22, 0x0

    return-object v22

    .line 3708
    .end local v9    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    .line 3709
    .local v8, "ex":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v23, "!@clone fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3710
    invoke-virtual {v8}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 3711
    const/16 v22, 0x0

    return-object v22

    .line 3704
    .end local v8    # "ex":Ljava/lang/CloneNotSupportedException;
    :catch_7
    move-exception v10

    .line 3705
    .local v10, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v23, "!@call method fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3706
    invoke-virtual {v10}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 3707
    const/16 v22, 0x0

    return-object v22

    .line 3700
    .end local v10    # "ex":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v12

    .line 3701
    .local v12, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v23, "!@call method fail getLiveIcon"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3702
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 3703
    const/16 v22, 0x0

    return-object v22

    .line 3719
    .end local v12    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v13    # "getLiveIconClassName":Ljava/lang/String;
    :cond_4
    const/16 v22, 0x0

    return-object v22

    .line 3647
    .restart local v13    # "getLiveIconClassName":Ljava/lang/String;
    .restart local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v18    # "m":Ljava/lang/reflect/Method;
    :catchall_2
    move-exception v22

    move-object v14, v15

    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .local v14, "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_2

    .line 3648
    .end local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .end local v18    # "m":Ljava/lang/reflect/Method;
    .restart local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    :catchall_3
    move-exception v22

    move-object v14, v15

    .end local v15    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v14    # "liveIconClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_1
.end method

.method private getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "drawableId"    # I
    .param p3, "density"    # I

    .prologue
    .line 1777
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1780
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1778
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getNoBadgeResizedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 3801
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v4, v6

    .line 3802
    .local v4, "iconwth":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v2, v6

    .line 3803
    .local v2, "hiconht":F
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v6}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3804
    .local v5, "mRes":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 3805
    .local v1, "app_icon_width":F
    const/4 v0, 0x0

    .line 3807
    .local v0, "app_icon_height":F
    const v6, 0x10500d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3808
    const v6, 0x10500d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 3810
    cmpg-float v6, v4, v7

    if-lez v6, :cond_0

    cmpg-float v6, v2, v7

    if-gtz v6, :cond_1

    .line 3811
    :cond_0
    return-object p1

    .line 3813
    :cond_1
    cmpl-float v6, v4, v1

    if-nez v6, :cond_2

    cmpl-float v6, v2, v0

    if-eqz v6, :cond_3

    .line 3814
    :cond_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    float-to-int v7, v1

    float-to-int v8, v0

    invoke-direct {p0, p1, v6, v7, v8}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move-object p1, v3

    .line 3816
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-object p1
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3352
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "forDefaultContainer"    # Ljava/lang/Boolean;

    .prologue
    .line 3356
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 42
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "forDefaultContainer"    # Ljava/lang/Boolean;
    .param p4, "fromThemePackage"    # Ljava/lang/Boolean;

    .prologue
    .line 3360
    const/4 v12, 0x0

    .line 3361
    .local v12, "bg":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v31, "NULL"

    .line 3362
    .local v31, "pkgname":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3363
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 3365
    :cond_0
    if-eqz p1, :cond_3

    .line 3366
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3367
    new-instance v4, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3368
    .local v12, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_1

    .line 3369
    return-object v12

    .line 3372
    .end local v12    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3373
    new-instance v4, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3374
    .restart local v12    # "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    .line 3375
    return-object v12

    .line 3378
    .end local v12    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object p2

    .line 3381
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_7

    .line 3382
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080382

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3386
    .restart local v12    # "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/16 v27, 0x0

    .line 3387
    .local v27, "noBG":Z
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_5

    .line 3388
    const/16 v27, 0x1

    .line 3389
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080382

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3391
    :cond_5
    if-eqz v12, :cond_e

    .line 3392
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 3393
    .local v8, "bgWidth":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 3394
    .local v14, "bgHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 3395
    .local v18, "drWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 3397
    .local v16, "drHeight":I
    if-lez v8, :cond_6

    if-gtz v14, :cond_8

    .line 3398
    :cond_6
    return-object p2

    .line 3384
    .end local v8    # "bgWidth":I
    .end local v12    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v14    # "bgHeight":I
    .end local v16    # "drHeight":I
    .end local v18    # "drWidth":I
    .end local v27    # "noBG":Z
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "bg":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 3397
    .restart local v8    # "bgWidth":I
    .restart local v14    # "bgHeight":I
    .restart local v16    # "drHeight":I
    .restart local v18    # "drWidth":I
    .restart local v27    # "noBG":Z
    :cond_8
    if-lez v18, :cond_6

    if-lez v16, :cond_6

    .line 3399
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", forDefault="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    const/4 v13, 0x0

    .line 3401
    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 3402
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 3403
    .local v26, "maxDr":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x90

    if-ge v8, v4, :cond_10

    move/from16 v0, v26

    if-ge v8, v0, :cond_10

    .line 3404
    move v11, v8

    .line 3405
    .local v11, "before":I
    const/16 v4, 0xc0

    move/from16 v0, v26

    if-ge v0, v4, :cond_f

    move/from16 v14, v26

    :goto_1
    move v8, v14

    .line 3406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080383

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v4, v12

    .line 3407
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3408
    const/4 v6, 0x1

    .line 3407
    invoke-static {v4, v8, v14, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 3409
    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bg rescaling before="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", after="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    .end local v11    # "before":I
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3419
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 3420
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 3422
    sget-boolean v4, Landroid/app/ApplicationPackageManager;->supportSmartIconUnify:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_a

    .line 3423
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    .line 3424
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    sget-object v4, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_9

    .line 3425
    sget-object v4, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    aget-object v4, v4, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3426
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    .line 3430
    :cond_9
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "applyIconUnifyFeature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--appIconPackageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    .end local v20    # "i":I
    :cond_a
    int-to-double v6, v8

    const-wide/high16 v40, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v40

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v40, v0

    cmpg-double v4, v6, v40

    if-gez v4, :cond_14

    .line 3433
    int-to-float v4, v8

    move/from16 v0, v26

    int-to-float v6, v0

    div-float v35, v4, v6

    .line 3434
    .local v35, "scaleX":F
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v37, v0

    .line 3435
    .local v37, "sizeX":I
    move/from16 v0, v16

    int-to-float v4, v0

    mul-float v4, v4, v35

    float-to-int v0, v4

    move/from16 v38, v0

    .line 3436
    .local v38, "sizeY":I
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_13

    .line 3437
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3438
    const/4 v6, 0x1

    .line 3437
    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v4, v0, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3446
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    :goto_4
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DR-icon scaling ori="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - scaled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    .end local v35    # "scaleX":F
    .end local v37    # "sizeX":I
    .end local v38    # "sizeY":I
    :goto_5
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3458
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 3459
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 3460
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 3461
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reset dr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_b

    .line 3463
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    .line 3464
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3468
    :cond_b
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v14, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3469
    .local v10, "b":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3470
    .local v15, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    .line 3471
    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->checkSettingsForIconTray()Z

    move-result v36

    .line 3472
    .local v36, "settingStatusForIconTray":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_c

    if-eqz v27, :cond_16

    .line 3475
    :cond_c
    :goto_6
    const/16 v21, 0x0

    .line 3476
    .local v21, "isBigIconForIconUnification":Z
    const/16 v22, 0x0

    .line 3477
    .local v22, "isTargetForAppIconCrop":Z
    move/from16 v19, v18

    .line 3478
    .local v19, "drWidthByScale":I
    move/from16 v17, v16

    .line 3479
    .local v17, "drHeightByScale":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3481
    if-eqz v36, :cond_19

    .line 3482
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3483
    const v9, 0x3f99999a    # 1.2f

    move-object/from16 v4, p0

    .line 3482
    invoke-direct/range {v4 .. v9}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIIF)F

    move-result v32

    .line 3484
    .local v32, "relativeScale":F
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v32, v4

    if-lez v4, :cond_18

    .line 3485
    const/high16 v4, 0x43480000    # 200.0f

    sub-float v32, v32, v4

    .line 3486
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v32

    float-to-int v0, v4

    move/from16 v19, v0

    .line 3487
    move/from16 v0, v16

    int-to-float v4, v0

    mul-float v4, v4, v32

    float-to-int v0, v4

    move/from16 v17, v0

    .line 3488
    const/16 v22, 0x1

    .line 3489
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080384

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 3490
    .local v23, "mask":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 3491
    .local v24, "maskBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    .line 3492
    .local v25, "maskWidth":I
    move/from16 v0, v25

    if-eq v0, v8, :cond_17

    .line 3493
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080385

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v4, v23

    .line 3494
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v8, v14, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 3498
    .local v24, "maskBitmap":Landroid/graphics/Bitmap;
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3499
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3503
    .end local v23    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v24    # "maskBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "maskWidth":I
    :goto_8
    int-to-float v4, v8

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v6, v14

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v7, v14

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    invoke-virtual {v15, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3509
    :goto_9
    if-nez v22, :cond_d

    .line 3510
    move/from16 v0, v32

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3543
    .end local v32    # "relativeScale":F
    :cond_d
    :goto_a
    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_20

    .line 3544
    const/4 v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3545
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 3546
    .local v30, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3547
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3548
    move/from16 v0, v19

    neg-int v4, v0

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move/from16 v0, v17

    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, v30

    invoke-virtual {v15, v5, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3549
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3550
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080386

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 3551
    .local v28, "outlineBg":Landroid/graphics/drawable/Drawable;
    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    .end local v28    # "outlineBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v8, v14, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 3552
    .local v29, "outlineBgBitmap":Landroid/graphics/Bitmap;
    neg-int v4, v8

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    neg-int v6, v14

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v4, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3563
    .end local v29    # "outlineBgBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "paint":Landroid/graphics/Paint;
    :goto_b
    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    .line 3565
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v0, v4, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3566
    .restart local p2    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_e

    .line 3567
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 3568
    new-instance v4, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    .line 3574
    .end local v5    # "drBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "bgWidth":I
    .end local v10    # "b":Landroid/graphics/Bitmap;
    .end local v13    # "bgBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bgHeight":I
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v16    # "drHeight":I
    .end local v17    # "drHeightByScale":I
    .end local v18    # "drWidth":I
    .end local v19    # "drWidthByScale":I
    .end local v21    # "isBigIconForIconUnification":Z
    .end local v22    # "isTargetForAppIconCrop":Z
    .end local v26    # "maxDr":I
    .end local v36    # "settingStatusForIconTray":Z
    :cond_e
    :goto_c
    return-object p2

    .line 3405
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "bgWidth":I
    .restart local v11    # "before":I
    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "bgHeight":I
    .restart local v16    # "drHeight":I
    .restart local v18    # "drWidth":I
    .restart local v26    # "maxDr":I
    :cond_f
    const/16 v14, 0xc0

    goto/16 :goto_1

    .line 3410
    .end local v11    # "before":I
    :cond_10
    instance-of v4, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_11

    move-object v4, v12

    .line 3411
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 3413
    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    :cond_11
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v14, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 3414
    .local v13, "bgBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3415
    .restart local v15    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v12, v7, v9, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3416
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 3424
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .restart local v20    # "i":I
    :cond_12
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 3440
    .end local v20    # "i":I
    .restart local v35    # "scaleX":F
    .restart local v37    # "sizeX":I
    .restart local v38    # "sizeY":I
    :cond_13
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 3441
    .local v39, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, v39

    invoke-direct {v15, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3442
    .restart local v15    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v9, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3443
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3444
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 3448
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v35    # "scaleX":F
    .end local v37    # "sizeX":I
    .end local v38    # "sizeY":I
    .end local v39    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    :cond_14
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_15

    .line 3449
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 3451
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3452
    .local v5, "drBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3453
    .restart local v15    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v9, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3454
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 3473
    .end local p2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "b":Landroid/graphics/Bitmap;
    .restart local v36    # "settingStatusForIconTray":Z
    :cond_16
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v13, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .restart local v17    # "drHeightByScale":I
    .restart local v19    # "drWidthByScale":I
    .restart local v21    # "isBigIconForIconUnification":Z
    .restart local v22    # "isTargetForAppIconCrop":Z
    .restart local v23    # "mask":Landroid/graphics/drawable/Drawable;
    .local v24, "maskBitmap":Landroid/graphics/Bitmap;
    .restart local v25    # "maskWidth":I
    .restart local v32    # "relativeScale":F
    :cond_17
    move-object/from16 v4, v23

    .line 3496
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    .local v24, "maskBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7

    .line 3501
    .end local v23    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v24    # "maskBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "maskWidth":I
    :cond_18
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v13, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 3505
    .end local v32    # "relativeScale":F
    :cond_19
    int-to-float v4, v8

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v6, v14

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v15, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3506
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3507
    const v9, 0x3f8ccccd    # 1.1f

    move-object/from16 v4, p0

    .line 3506
    invoke-direct/range {v4 .. v9}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIIF)F

    move-result v32

    .restart local v32    # "relativeScale":F
    goto/16 :goto_9

    .line 3513
    .end local v32    # "relativeScale":F
    :cond_1a
    int-to-float v4, v8

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v6, v14

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v15, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3516
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3517
    int-to-float v4, v8

    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    mul-float/2addr v4, v6

    move/from16 v0, v18

    int-to-float v6, v0

    div-float v33, v4, v6

    .line 3518
    .local v33, "relativeScaleX":F
    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    mul-float/2addr v4, v6

    move/from16 v0, v16

    int-to-float v6, v0

    div-float v34, v4, v6

    .line 3528
    .local v34, "relativeScaleY":F
    :goto_d
    sget-boolean v4, Landroid/app/ApplicationPackageManager;->supportSmartIconUnify:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    .line 3529
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v33, v4

    if-lez v4, :cond_1e

    .line 3530
    const/high16 v4, 0x43480000    # 200.0f

    sub-float v33, v33, v4

    .line 3531
    const/high16 v4, 0x43480000    # 200.0f

    sub-float v34, v34, v4

    .line 3532
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v33

    float-to-int v0, v4

    move/from16 v19, v0

    .line 3533
    move/from16 v0, v16

    int-to-float v4, v0

    mul-float v4, v4, v34

    float-to-int v0, v4

    move/from16 v17, v0

    .line 3534
    const/16 v21, 0x1

    goto/16 :goto_a

    .line 3519
    .end local v33    # "relativeScaleX":F
    .end local v34    # "relativeScaleY":F
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1c

    if-eqz v27, :cond_1d

    .line 3520
    :cond_1c
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3521
    const v9, 0x3f8ccccd    # 1.1f

    move-object/from16 v4, p0

    .line 3520
    invoke-direct/range {v4 .. v9}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIIF)F

    move-result v33

    .line 3522
    .restart local v33    # "relativeScaleX":F
    move/from16 v34, v33

    .restart local v34    # "relativeScaleY":F
    goto :goto_d

    .line 3524
    .end local v33    # "relativeScaleX":F
    .end local v34    # "relativeScaleY":F
    :cond_1d
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3525
    move-object/from16 v0, p0

    iget v9, v0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    move-object/from16 v4, p0

    .line 3524
    invoke-direct/range {v4 .. v9}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIIF)F

    move-result v33

    .line 3526
    .restart local v33    # "relativeScaleX":F
    move/from16 v34, v33

    .restart local v34    # "relativeScaleY":F
    goto :goto_d

    .line 3536
    :cond_1e
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_a

    .line 3539
    :cond_1f
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_a

    .line 3554
    .end local v33    # "relativeScaleX":F
    .end local v34    # "relativeScaleY":F
    :cond_20
    if-eqz v22, :cond_21

    .line 3555
    const/4 v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3556
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 3557
    .restart local v30    # "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3558
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3559
    move/from16 v0, v19

    neg-int v4, v0

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move/from16 v0, v17

    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, v30

    invoke-virtual {v15, v5, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 3561
    .end local v30    # "paint":Landroid/graphics/Paint;
    :cond_21
    move/from16 v0, v18

    neg-int v4, v0

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move/from16 v0, v16

    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 3570
    .restart local p2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_22
    new-instance v4, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c
.end method

.method private getUserIfProfile(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1753
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1754
    .local v2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1755
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    .line 1756
    return-object v0

    .line 1759
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 9
    .param p0, "cmd"    # I
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "hasPkgInfo"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1975
    const/4 v1, 0x0

    .line 1976
    .local v1, "immediateGc":Z
    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    .line 1977
    const/4 v1, 0x1

    .line 1979
    :cond_0
    if-eqz p1, :cond_7

    array-length v6, p1

    if-lez v6, :cond_7

    .line 1980
    const/4 v2, 0x0

    .line 1981
    .local v2, "needCleanup":Z
    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v4, p1, v5

    .line 1982
    .local v4, "ssp":Ljava/lang/String;
    sget-object v7, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1983
    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1984
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1985
    .local v3, "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1987
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1988
    const/4 v2, 0x1

    .line 1983
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1991
    .end local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 1992
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1993
    .restart local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1995
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    const/4 v2, 0x1

    .line 1991
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_4
    monitor-exit v7

    .line 1981
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1982
    .end local v0    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 2001
    .end local v4    # "ssp":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    .line 2002
    :cond_6
    if-eqz v1, :cond_8

    .line 2004
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1974
    .end local v2    # "needCleanup":Z
    :cond_7
    :goto_3
    return-void

    .line 2006
    .restart local v2    # "needCleanup":Z
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_3
.end method

.method private installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V
    .locals 7
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 2219
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Only file:// URIs are supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2223
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2225
    .local v1, "originPath":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/app/PackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    return-void

    .line 2227
    :catch_0
    move-exception v6

    .line 2228
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private isLiveIconPackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3597
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 3598
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.sec.android.app.clockpackage"

    .line 3597
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3599
    .local v0, "clockPkgName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    .line 3600
    const-string/jumbo v5, "CscFeature_Clock_ConfigReplacePackage"

    .line 3599
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3601
    .local v3, "tempCscClockPkgName":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3604
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Landroid/app/ApplicationPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3605
    move-object v0, v3

    .line 3612
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3613
    .local v2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "com.android.calendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    const-string/jumbo v4, "com.samsung.android.calendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3615
    const-string/jumbo v4, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3616
    const-string/jumbo v4, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    const-string/jumbo v4, "com.samsung.android.opencalendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    const-string/jumbo v4, "com.android.deskclock"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3621
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 3607
    .end local v2    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 3608
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLiveIconPackage NameNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3821
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method private isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;)Z
    .locals 6
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2461
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "force_allow_on_external"

    .line 2460
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 2463
    .local v1, "forceAllowOnExternal":Z
    :goto_0
    const-string/jumbo v4, "private"

    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2464
    return v2

    .line 2460
    .end local v1    # "forceAllowOnExternal":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "forceAllowOnExternal":Z
    goto :goto_0

    .line 2469
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2470
    return v3

    .line 2472
    :cond_2
    if-nez v1, :cond_4

    .line 2473
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v4, v2, :cond_3

    .line 2474
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 2475
    :cond_3
    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "it is for only internal only."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return v3

    .line 2480
    :cond_4
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2481
    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "this volume is not mounted writable"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return v3

    .line 2486
    :cond_5
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2487
    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v3, "it is PrimaryPhysical, but Moving to ASEC is only for internal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v2

    return v2

    .line 2493
    :cond_6
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2494
    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "isPackageDeviceAdminOnAnyUser true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    return v3

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2502
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 2504
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_9

    .line 2502
    :cond_8
    :goto_1
    return v2

    :cond_9
    move v2, v3

    .line 2504
    goto :goto_1
.end method

.method private static isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2556
    const-string/jumbo v2, "private"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2557
    return v0

    .line 2561
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2562
    return v1

    .line 2566
    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 463
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 464
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "runtimeIsa":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "secondaryIsa":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ro.dalvik.vm.isa."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 477
    .local v0, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 478
    return-object v0

    .end local v0    # "modified":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-object v3, v2

    .line 470
    goto :goto_0

    .line 481
    .end local v1    # "runtimeIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1968
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1969
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1967
    return-void

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2076
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2077
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2075
    return-void

    .line 2076
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAppIconInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x3f333333    # 0.7f

    .line 3157
    const/4 v4, -0x1

    iput v4, p0, Landroid/app/ApplicationPackageManager;->applyIconUnifyFeature:I

    .line 3158
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3160
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3161
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    .line 3160
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 3162
    .local v2, "r":Landroid/content/res/Resources;
    const-string/jumbo v4, "icon_bg_range"

    const-string/jumbo v5, "integer"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3163
    .local v3, "resID":I
    if-eqz v3, :cond_0

    .line 3164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    .line 3168
    :goto_0
    const-string/jumbo v4, "icon_scale_size"

    const-string/jumbo v5, "integer"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3169
    if-eqz v3, :cond_1

    .line 3170
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3171
    .local v1, "iconScale":I
    int-to-float v4, v1

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    .line 3156
    .end local v1    # "iconScale":I
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :goto_1
    return-void

    .line 3166
    .restart local v2    # "r":Landroid/content/res/Resources;
    .restart local v3    # "resID":I
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3175
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :catch_0
    move-exception v0

    .line 3176
    .local v0, "e":Ljava/lang/Exception;
    iput v8, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    .line 3177
    iput v7, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    .line 3178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3173
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "r":Landroid/content/res/Resources;
    .restart local v3    # "resID":I
    :cond_1
    const v4, 0x3f333333    # 0.7f

    :try_start_1
    iput v4, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3181
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :cond_2
    iput v8, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    .line 3182
    iput v7, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconScale:F

    goto :goto_1
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2916
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    return-void

    .line 2918
    :catch_0
    move-exception v6

    .line 2919
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .prologue
    .line 1897
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    .line 1898
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 1899
    return-void

    .line 1902
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1904
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 1905
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1896
    return-void

    .line 1906
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1897
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2663
    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "addPackageToPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 2681
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2679
    return-void

    .line 2682
    :catch_0
    move-exception v6

    .line 2683
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .prologue
    .line 2691
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    return-void

    .line 2692
    :catch_0
    move-exception v6

    .line 2693
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public applyOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/pm/IOverlayCallback;Z)V
    .locals 2
    .param p3, "callback"    # Landroid/content/pm/IOverlayCallback;
    .param p4, "resetSetting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/IOverlayCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3831
    .local p1, "disablePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "enablePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->applyOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/pm/IOverlayCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3829
    :goto_0
    return-void

    .line 3832
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 2162
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2163
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public applyRuntimePermissionsForAllApplications(II)Z
    .locals 2
    .param p1, "permState"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2172
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->applyRuntimePermissionsForAllApplications(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2173
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public cancelEMPHandlerSendPendingBroadcast()V
    .locals 2

    .prologue
    .line 3966
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->cancelEMPHandlerSendPendingBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3964
    :goto_0
    return-void

    .line 3967
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 622
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkSignatures(II)I
    .locals 2
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 2588
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    return-void

    .line 2589
    :catch_0
    move-exception v0

    .line 2590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearCrossProfileIntentFilters(I)V
    .locals 3
    .param p1, "sourceUserId"    # I

    .prologue
    .line 2929
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    return-void

    .line 2930
    :catch_0
    move-exception v0

    .line 2931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2721
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    return-void

    .line 2722
    :catch_0
    move-exception v0

    .line 2723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 2597
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2595
    return-void

    .line 2598
    :catch_0
    move-exception v0

    .line 2599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 2607
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    return-void

    .line 2608
    :catch_0
    move-exception v0

    .line 2609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I

    .prologue
    .line 2571
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 2570
    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    .line 2578
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p4, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    return-void

    .line 2579
    :catch_0
    move-exception v0

    .line 2580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J

    .prologue
    .line 2264
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    return-void

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2788
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    return-void

    .line 2789
    :catch_0
    move-exception v0

    .line 2790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "pi"    # Landroid/content/IntentSender;

    .prologue
    .line 2626
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2624
    return-void

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "idealStorageSize"    # J
    .param p4, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 2617
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    return-void

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1486
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1493
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1497
    :cond_0
    const/high16 v1, 0x10000

    .line 1496
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1498
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 1499
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1502
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1251
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1257
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1261
    :cond_0
    const/high16 v1, 0x10000

    .line 1260
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1262
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 1263
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1266
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 490
    return-object v0

    .line 492
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 496
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1519
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1526
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1530
    :cond_0
    const/high16 v1, 0x10000

    .line 1529
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1531
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 1532
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1535
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2317
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2318
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_0

    .line 2319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2321
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2322
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/IntentFilter;>;"
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 426
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    if-nez v1, :cond_0

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 429
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 430
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1507
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1513
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2779
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2780
    :catch_0
    move-exception v0

    .line 2781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2808
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2809
    :catch_0
    move-exception v0

    .line 2810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1295
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1300
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 1314
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1320
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 445
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 446
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 452
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 456
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2142
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1540
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1546
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2759
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2760
    :catch_0
    move-exception v0

    .line 2761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1290
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1291
    const v1, 0x1080093

    .line 1290
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2330
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1161
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    .line 1163
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    .line 1166
    .local v2, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 1165
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v15}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v9

    .line 1167
    .local v9, "imageData":[B
    const/4 v5, 0x0

    .line 1168
    .local v5, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 1169
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1171
    .local v10, "is":Ljava/io/ByteArrayInputStream;
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 1172
    .local v14, "typedValue":Landroid/util/TypedValue;
    const/4 v15, 0x0

    iput v15, v14, Landroid/util/TypedValue;->density:I

    .line 1174
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1175
    .local v12, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v15}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v15, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1177
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v15}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v15, v14, v10, v0, v12}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1178
    .local v5, "drw":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v15, "ApplicationPackageManager"

    const-string/jumbo v16, "EDM:ApplicationIcon got from EDM database "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    return-object v5

    .line 1183
    .end local v2    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v5    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v9    # "imageData":[B
    .end local v10    # "is":Ljava/io/ByteArrayInputStream;
    .end local v12    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "typedValue":Landroid/util/TypedValue;
    :catch_0
    move-exception v8

    .line 1184
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "ApplicationPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EDM: Get Icon EX: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v11, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1189
    .local v11, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1190
    .local v3, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 1191
    return-object v3

    .line 1194
    :cond_1
    if-nez p3, :cond_2

    .line 1196
    const/16 v15, 0x400

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    .line 1202
    :cond_2
    if-eqz p2, :cond_4

    .line 1204
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1206
    .local v13, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v15, v13, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1207
    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v15, v13, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1208
    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iput v15, v13, Landroid/content/res/Resources;->mUserId:I

    .line 1210
    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1211
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 1212
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1230
    :cond_3
    return-object v4

    .line 1197
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v13    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v6

    .line 1198
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    return-object v15

    .line 1237
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v8

    .line 1240
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving icon 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1241
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    .line 1240
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1241
    const-string/jumbo v17, " in package "

    .line 1240
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    const/4 v15, 0x0

    return-object v15

    .line 1234
    :catch_3
    move-exception v7

    .line 1235
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving resources for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1236
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1235
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1236
    const-string/jumbo v17, ": "

    .line 1235
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1236
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 1235
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v6

    .line 1232
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving resources for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1233
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1232
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEphemeralApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 865
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 866
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 865
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getEphemeralApplicationIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 867
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 868
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 870
    :cond_0
    return-object v4

    .line 871
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 872
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getEphemeralApplications()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getEphemeralApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 852
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/EphemeralApplicationInfo;>;"
    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 855
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 856
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/EphemeralApplicationInfo;>;"
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getEphemeralCookie()[B
    .locals 5

    .prologue
    .line 896
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 897
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    .line 896
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->getEphemeralApplicationCookie(Ljava/lang/String;I)[B

    move-result-object v0

    .line 898
    .local v0, "cookie":[B
    if-eqz v0, :cond_0

    .line 899
    return-object v0

    .line 901
    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 903
    .end local v0    # "cookie":[B
    :catch_0
    move-exception v1

    .line 904
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getEphemeralCookieMaxSizeBytes()I
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 889
    const-string/jumbo v1, "ephemeral_cookie_max_size_bytes"

    .line 890
    const/16 v2, 0x4000

    .line 888
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 2740
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2741
    :catch_0
    move-exception v0

    .line 2742
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 835
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 836
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v1, :cond_0

    .line 837
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 839
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 840
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 803
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_0

    .line 804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 806
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 807
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2358
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1128
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1130
    .local v1, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_0

    .line 1131
    return-object v1

    .line 1133
    .end local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2302
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2303
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    if-nez v1, :cond_0

    .line 2304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2306
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2307
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :catch_0
    move-exception v0

    .line 2308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2282
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2283
    :catch_0
    move-exception v0

    .line 2284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2817
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2821
    :catch_0
    move-exception v0

    .line 2822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 290
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 292
    :cond_0
    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 297
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 298
    :cond_2
    return-object v4

    .line 300
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 303
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    return-object v0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 310
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 316
    :cond_0
    return-object v4

    .line 318
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 320
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 321
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    return-object v0
.end method

.method public getManagedUserBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;
    .param p3, "badgeDensity"    # I

    .prologue
    .line 1553
    const v1, 0x10803b6

    .line 1552
    invoke-direct {p0, v1, p3}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1554
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getMoveStatus(I)I
    .locals 2
    .param p1, "moveId"    # I

    .prologue
    .line 2367
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2436
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 2437
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2438
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 2439
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2442
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    if-eqz v1, :cond_2

    .line 2443
    const-string/jumbo v6, "ApplicationPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageCandidateVolumes, currentVol :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :goto_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 2450
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-direct {p0, v6, p1, v3}, Landroid/app/ApplicationPackageManager;->isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2451
    :cond_1
    const-string/jumbo v6, "ApplicationPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mountFlags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2445
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vol$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v6, "ApplicationPackageManager"

    const-string/jumbo v7, "getPackageCandidateVolumes, currentVol is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2455
    .restart local v4    # "vol$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v0
.end method

.method public getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2424
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2425
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2426
    const-string/jumbo v1, "private"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 2427
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2428
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 2430
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 334
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    .local v1, "gids":[I
    if-eqz v1, :cond_0

    .line 336
    return-object v1

    .line 338
    .end local v1    # "gids":[I
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gids":[I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 252
    return-object v1

    .line 254
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 8

    .prologue
    .line 2887
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2888
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2890
    :try_start_1
    new-instance v0, Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    .line 2891
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v2, p0

    .line 2890
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2896
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-object v0

    .line 2892
    :catch_0
    move-exception v6

    .line 2893
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2887
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 2655
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    return-void

    .line 2656
    :catch_0
    move-exception v0

    .line 2657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;II)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    .local v1, "uid":I
    if-ltz v1, :cond_0

    .line 361
    return v1

    .line 363
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 761
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 819
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 820
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_0

    .line 821
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 823
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 824
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 651
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 654
    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 651
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 410
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 411
    return-object v1

    .line 413
    .end local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 375
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 376
    return-object v1

    .line 378
    .end local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2731
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2673
    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "getPreferredPackages() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2536
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 2537
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2538
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 2539
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2540
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const-string/jumbo v6, "primary_physical"

    .line 2541
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v7

    .line 2540
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2541
    if-eqz v1, :cond_1

    .line 2543
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2551
    :cond_0
    return-object v0

    .line 2545
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 2546
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/app/ApplicationPackageManager;->isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2547
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    .prologue
    .line 2529
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2530
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    .line 2531
    .local v1, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    return-object v2
.end method

.method public getProgressionOfPackageChanged()I
    .locals 2

    .prologue
    .line 3953
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getProgressionOfPackageChanged()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3954
    :catch_0
    move-exception v0

    .line 3956
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 533
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 535
    return-object v1

    .line 537
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 541
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 505
    return-object v0

    .line 507
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 511
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2200
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1802
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1801
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 12
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1808
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 1811
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 1813
    .local v11, "sameUid":Z
    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v6, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1814
    .local v6, "pi":Landroid/app/LoadedApk;
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1817
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v6

    .line 1818
    if-nez v6, :cond_1

    .line 1819
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1826
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 1827
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v6, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1831
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1832
    if-eqz v11, :cond_5

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1833
    :goto_2
    if-eqz v11, :cond_6

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 1834
    :goto_3
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 1831
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1836
    .local v10, "r":Landroid/content/res/Resources;
    if-eqz v10, :cond_3

    .line 1838
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v10, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1839
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v10, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1840
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v10, Landroid/content/res/Resources;->mUserId:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1843
    :cond_3
    return-object v10

    .line 1811
    .end local v6    # "pi":Landroid/app/LoadedApk;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "sameUid":Z
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "sameUid":Z
    goto :goto_0

    .line 1821
    .restart local v6    # "pi":Landroid/app/LoadedApk;
    :catch_0
    move-exception v8

    .line 1822
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1823
    const-string/jumbo v0, "ApplicationPackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getResourcesForApplication using Info of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1832
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_2

    .line 1833
    :cond_6
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1844
    :catch_1
    move-exception v7

    .line 1846
    .local v7, "cause":Landroid/content/res/Resources$NotFoundException;
    new-instance v9, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v9, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1848
    throw v9
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1856
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1855
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1863
    if-gez p2, :cond_0

    .line 1864
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call does not support special user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1864
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1867
    :cond_0
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1868
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    return-object v2

    .line 1871
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x400

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1872
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1873
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1875
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1876
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1878
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRuntimePermissionGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2209
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionGroups()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 518
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 520
    return-object v1

    .line 522
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2829
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2832
    :catch_0
    move-exception v0

    .line 2833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 6

    .prologue
    .line 579
    :try_start_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 580
    .local v3, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    if-nez v3, :cond_0

    .line 581
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    return-object v5

    .line 583
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 584
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/pm/FeatureInfo;

    .line 585
    .local v4, "res":[Landroid/content/pm/FeatureInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 586
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_1
    return-object v4

    .line 589
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .end local v3    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    .end local v4    # "res":[Landroid/content/pm/FeatureInfo;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v8, 0x0

    .line 2084
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2085
    .local v2, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2086
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 2087
    return-object v4

    .line 2089
    :cond_0
    if-nez p3, :cond_1

    .line 2091
    const/16 v5, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 2097
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2098
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2099
    invoke-direct {p0, v2, v4}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2100
    return-object v4

    .line 2092
    .end local v3    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2093
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v8

    .line 2104
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 2107
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2108
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 2107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2108
    const-string/jumbo v7, " in package "

    .line 2107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2111
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v8

    .line 2101
    :catch_2
    move-exception v0

    .line 2102
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure retrieving resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2103
    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "background"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1454
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v5, v5, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getThemeAppIconMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1456
    .local v1, "mPackageIconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-object v7

    .line 1457
    :cond_1
    const/4 v2, 0x0

    .line 1458
    .local v2, "overlayIcon":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1459
    const-string/jumbo v5, "3rd_party_icon"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "overlayIcon":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1467
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 1469
    :try_start_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1470
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    .line 1469
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1471
    .local v3, "r":Landroid/content/res/Resources;
    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1472
    .local v4, "resID":I
    if-eqz v4, :cond_0

    .line 1473
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 1460
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "resID":I
    .restart local v2    # "overlayIcon":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_2

    .line 1461
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1462
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "overlayIcon":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .local v2, "overlayIcon":Ljava/lang/String;
    goto :goto_1

    .line 1463
    .local v2, "overlayIcon":Ljava/lang/String;
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1464
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "overlayIcon":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .local v2, "overlayIcon":Ljava/lang/String;
    goto :goto_1

    .line 1475
    .end local v2    # "overlayIcon":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 780
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 781
    .local v1, "uid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 782
    return v1

    .line 784
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 787
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1704
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1705
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1706
    if-eqz v6, :cond_6

    .line 1707
    if-gtz p2, :cond_0

    .line 1708
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget p2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1710
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_5

    .line 1713
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1714
    const-string/jumbo v7, "ApplicationPackageManager"

    const-string/jumbo v8, "isECContainer is true "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v1

    .line 1716
    .local v1, "badge":[B
    if-nez v1, :cond_1

    .line 1717
    return-object v9

    .line 1719
    :cond_1
    const/4 v2, 0x0

    .line 1720
    .local v2, "badgeimage":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "badgeimage":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    array-length v8, v1

    invoke-static {v1, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1721
    .local v2, "badgeimage":Landroid/graphics/drawable/Drawable;
    return-object v2

    .line 1724
    .end local v1    # "badge":[B
    .end local v2    # "badgeimage":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "KNOX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1725
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1726
    const v8, 0x10803e9

    .line 1725
    invoke-virtual {v7, v8, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7

    .line 1727
    :cond_3
    iget-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo v8, "KNOX II"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1728
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1729
    const v8, 0x10803ea

    .line 1728
    invoke-virtual {v7, v8, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7

    .line 1730
    :cond_4
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1731
    const-string/jumbo v0, "com.samsung.knox.securefolder"

    .line 1733
    .local v0, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1734
    .local v4, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v7, "ic_sf_badge_bottom"

    const-string/jumbo v8, "drawable"

    invoke-virtual {v4, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1736
    .local v5, "resid":I
    const/4 v7, 0x0

    invoke-virtual {v4, v5, p2, v7}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 1737
    .end local v4    # "packageResources":Landroid/content/res/Resources;
    .end local v5    # "resid":I
    :catch_0
    move-exception v3

    .line 1738
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1740
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 1741
    const v8, 0x10804bf

    .line 1740
    invoke-virtual {v7, v8, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7

    .line 1743
    .end local v0    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1747
    :cond_6
    const v7, 0x10803b6

    invoke-direct {p0, p1, v7, p2}, Landroid/app/ApplicationPackageManager;->getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7
.end method

.method public getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .prologue
    .line 1766
    const v0, 0x10803b7

    .line 1765
    invoke-direct {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .prologue
    .line 1694
    invoke-virtual {p0, p2, p4}, Landroid/app/ApplicationPackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1695
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1696
    return-object p1

    .line 1698
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 27
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager;->getBadgeResIdForUser(I)I

    move-result v11

    .line 1560
    .local v11, "badgeResId":I
    if-nez v11, :cond_0

    .line 1561
    return-object p1

    .line 1565
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    const-string/jumbo v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1566
    .local v18, "mPersona":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v9, 0x0

    .line 1567
    .local v9, "badgeIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1568
    const-string/jumbo v5, "com.samsung.knox.securefolder"

    .line 1570
    .local v5, "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v20

    .line 1571
    .local v20, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v22, "ic_sf_badge"

    const-string/jumbo v23, "drawable"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 1573
    .local v21, "resid":I
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1579
    .end local v5    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .end local v9    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    .end local v20    # "packageResources":Landroid/content/res/Resources;
    .end local v21    # "resid":I
    :cond_1
    :goto_0
    if-nez v9, :cond_2

    .line 1580
    const-string/jumbo v22, "system"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1582
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x64

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 1583
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1584
    return-object p1

    .line 1574
    .restart local v5    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .restart local v9    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v14

    .line 1575
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1586
    .end local v5    # "SECURE_FOLDER_PACKAGE":Ljava/lang/String;
    .end local v9    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1587
    .local v17, "iconwth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 1588
    .local v15, "hiconht":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 1589
    .local v19, "mRes":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 1590
    .local v7, "app_icon_width":F
    const/4 v6, 0x0

    .line 1592
    .local v6, "app_icon_height":F
    const-string/jumbo v22, "com.google.android.packageinstaller"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 1593
    const v22, 0x10500d4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 1594
    const v22, 0x10500d5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 1600
    :goto_1
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-lez v22, :cond_4

    const/16 v22, 0x0

    cmpg-float v22, v15, v22

    if-gtz v22, :cond_6

    .line 1601
    :cond_4
    return-object p1

    .line 1596
    :cond_5
    move/from16 v7, v17

    .line 1597
    move v6, v15

    goto :goto_1

    .line 1604
    :cond_6
    if-eqz v18, :cond_8

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1606
    const-string/jumbo v22, "ApplicationPackageManager"

    const-string/jumbo v23, "isECContainer is true in getUserBadgedIcon"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getECBadge(I)[B

    move-result-object v8

    .line 1608
    .local v8, "badge":[B
    if-eqz v8, :cond_7

    .line 1609
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    array-length v0, v8

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1612
    .end local v8    # "badge":[B
    :cond_7
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v7, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v6, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v10, "badgeIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v10

    .line 1615
    .end local v10    # "badgeIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 1616
    .local v13, "badgewth":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 1618
    .local v12, "badgeht":I
    cmpl-float v22, v17, v7

    if-nez v22, :cond_9

    cmpl-float v22, v15, v6

    if-eqz v22, :cond_a

    .line 1619
    :cond_9
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v22, v0

    float-to-int v0, v7

    move/from16 v23, v0

    float-to-int v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1620
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v22, Landroid/graphics/Rect;

    float-to-int v0, v7

    move/from16 v23, v0

    sub-int v23, v23, v13

    float-to-int v0, v6

    move/from16 v24, v0

    sub-int v24, v24, v12

    float-to-int v0, v7

    move/from16 v25, v0

    float-to-int v0, v6

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    return-object v22

    .line 1622
    .end local v16    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a
    new-instance v22, Landroid/graphics/Rect;

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v13

    float-to-int v0, v15

    move/from16 v24, v0

    sub-int v24, v24, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v25, v0

    float-to-int v0, v15

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    return-object v22

    .line 1627
    .end local v6    # "app_icon_height":F
    .end local v7    # "app_icon_width":F
    .end local v12    # "badgeht":I
    .end local v13    # "badgewth":I
    .end local v15    # "hiconht":F
    .end local v17    # "iconwth":F
    .end local v19    # "mRes":Landroid/content/res/Resources;
    :cond_b
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    return-object v22
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1785
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    .line 1787
    if-eqz v0, :cond_0

    .line 1789
    return-object p1

    .line 1792
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1793
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x10405b4

    .line 1792
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1795
    :cond_1
    return-object p1
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    .line 216
    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    .prologue
    .line 2867
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2868
    :catch_0
    move-exception v0

    .line 2869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 2117
    if-nez p3, :cond_0

    .line 2119
    const/16 v3, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 2125
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2126
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 2120
    .end local v2    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2121
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v6

    .line 2133
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 2134
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2135
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v6

    .line 2127
    :catch_2
    move-exception v1

    .line 2130
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving xml 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2131
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2131
    const-string/jumbo v5, " in package "

    .line 2130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2234
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2241
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 2242
    .local v1, "res":I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 2243
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2246
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2245
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_0
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
    .locals 6
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 2155
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V

    .line 2154
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 6
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 2148
    new-instance v2, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    invoke-direct {v2, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    .line 2149
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    .line 2148
    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V

    .line 2147
    return-void
.end method

.method public isEphemeralApplication()Z
    .locals 4

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 880
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 879
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->isEphemeralApplication(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2903
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2904
    :catch_0
    move-exception v0

    .line 2905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2645
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSafeMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1886
    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v3, :cond_0

    .line 1887
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 1889
    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    .line 1887
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1889
    goto :goto_1

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 2840
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 2852
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUpgrade()Z
    .locals 2

    .prologue
    .line 2879
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 2939
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ApplicationPackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "forIconContainer"    # Z
    .param p4, "mode"    # I

    .prologue
    .line 2947
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2948
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "com.sec.knox.switcher.B2CShareViaActivity"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.knox.securefolder.switcher.B2CShareViaActivity"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2949
    :cond_0
    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->getNoBadgeResizedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2950
    :cond_1
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2

    .line 2951
    return-object v0

    .line 2953
    :cond_2
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 2960
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "forIconContainer"    # Z
    .param p4, "mode"    # I

    .prologue
    .line 2968
    const/4 v8, 0x0

    .line 2969
    .local v8, "userId":I
    if-eqz p2, :cond_0

    .line 2970
    iget v9, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2972
    :cond_0
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->checkAppIconThemePackage()V

    .line 2973
    const/4 v1, 0x0

    .line 2974
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0x64

    if-ge v8, v9, :cond_4

    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 2975
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2976
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    iget v9, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    if-nez v9, :cond_2

    .line 2977
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, p1, v1, v9, v10}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2985
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 2986
    return-object v1

    .line 2978
    :cond_2
    if-eqz v1, :cond_1

    .line 2979
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 2980
    new-instance v9, Landroid/app/ApplicationPackageManager$ResourceName;

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v9, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2982
    :cond_3
    new-instance v9, Landroid/app/ApplicationPackageManager$ResourceName;

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v9, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2989
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v9, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v10, -0x2710

    if-eq v9, v10, :cond_6

    .line 2990
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v9

    iget v10, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2991
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 2992
    iget v9, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 2994
    :cond_5
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v9

    .line 2996
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 2997
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v10, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p0, v9, v10, p2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2999
    :cond_7
    if-nez v1, :cond_8

    .line 3000
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3002
    :cond_8
    if-eqz p3, :cond_a

    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-nez v9, :cond_a

    if-eqz v1, :cond_a

    .line 3003
    sget v9, Landroid/app/ApplicationPackageManager;->configSmartAppIconScaler:I

    if-gtz v9, :cond_9

    sget-object v9, Landroid/app/ApplicationPackageManager;->SCafeVersion:Ljava/lang/String;

    if-eqz v9, :cond_a

    sget-object v9, Landroid/app/ApplicationPackageManager;->SCafeVersion:Ljava/lang/String;

    const-string/jumbo v10, "2016"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 3002
    if-eqz v9, :cond_a

    .line 3004
    :cond_9
    const/4 v3, 0x0

    .line 3005
    .local v3, "drawIconTray":Z
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Landroid/app/ApplicationPackageManager;->checkComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3006
    .local v3, "drawIconTray":Z
    if-eqz v3, :cond_d

    .line 3007
    packed-switch p4, :pswitch_data_0

    .line 3032
    .end local v3    # "drawIconTray":Z
    :cond_a
    :goto_1
    :pswitch_0
    const/4 v2, 0x0

    .line 3034
    .local v2, "drLiveIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3035
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Landroid/app/ApplicationPackageManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3036
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Landroid/app/ApplicationPackageManager;->getLiveIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3040
    .end local v2    # "drLiveIcon":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/16 v9, 0x64

    if-ge v8, v9, :cond_c

    if-eqz v2, :cond_c

    .line 3041
    const/4 v5, 0x0

    .line 3043
    .local v5, "fromOverlay":Z
    :try_start_0
    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v9}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 3044
    .local v6, "r":Landroid/content/res/Resources;
    const-string/jumbo v9, "liveicon_from_theme"

    const-string/jumbo v10, "bool"

    iget-object v11, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3045
    .local v7, "resID":I
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 3049
    .end local v5    # "fromOverlay":Z
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "resID":I
    :goto_2
    const-string/jumbo v9, "ApplicationPackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "load= live icon for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", from overlay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    if-nez v5, :cond_c

    iget v9, p0, Landroid/app/ApplicationPackageManager;->openThemeAppIconRange:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_c

    .line 3051
    invoke-direct {p0, p1, v2}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3054
    :cond_c
    if-eqz v2, :cond_e

    .line 3055
    return-object v2

    .line 3011
    .restart local v3    # "drawIconTray":Z
    :pswitch_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, p1, v1, v9}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 3016
    :cond_d
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/app/ApplicationPackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v3

    .line 3017
    if-eqz v3, :cond_a

    .line 3018
    packed-switch p4, :pswitch_data_1

    goto/16 :goto_1

    .line 3022
    :pswitch_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, p1, v1, v9}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    return-object v9

    .line 3046
    .end local v3    # "drawIconTray":Z
    .restart local v5    # "fromOverlay":Z
    :catch_0
    move-exception v4

    .line 3047
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3059
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fromOverlay":Z
    :cond_e
    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_11

    iget-object v9, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string/jumbo v10, "android.permission-group"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 3060
    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    if-nez v9, :cond_f

    .line 3061
    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v9}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    .line 3063
    :cond_f
    if-eqz v1, :cond_10

    .line 3064
    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    const v10, 0x10600da

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 3069
    :cond_10
    :goto_3
    return-object v1

    .line 3066
    :cond_11
    const/16 v9, 0x64

    if-ge v8, v9, :cond_10

    if-eqz v1, :cond_10

    iget-object v9, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-eqz v9, :cond_10

    .line 3067
    invoke-direct {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 3007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3018
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 2408
    :try_start_0
    const-string/jumbo v2, "private"

    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2409
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2416
    .local v1, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 2410
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2411
    const-string/jumbo v1, "primary_physical"

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 2413
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_1
    iget-object v2, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 2417
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 2513
    :try_start_0
    const-string/jumbo v2, "private"

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2514
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2521
    .local v1, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 2515
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2516
    const-string/jumbo v1, "primary_physical"

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 2518
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 2522
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1014
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    invoke-interface {v2, p1, v3, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1016
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 1017
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1019
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1020
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1117
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1118
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1147
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstrumentationInfo;>;"
    if-nez v1, :cond_0

    .line 1148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1150
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1151
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstrumentationInfo;>;"
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 950
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-interface {v3, p1, v4, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 952
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 953
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 956
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 958
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 959
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3, v4, p0, v1}, Landroid/content/res/Resources;->addAppsNames(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_1
    return-object v1

    .line 963
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 16
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 975
    .local v13, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 976
    .local v4, "specificTypes":[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 977
    move-object/from16 v0, p2

    array-length v9, v0

    .line 978
    .local v9, "N":I
    const/4 v11, 0x0

    .end local v4    # "specificTypes":[Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 979
    aget-object v14, p2, v11

    .line 980
    .local v14, "sp":Landroid/content/Intent;
    if-eqz v14, :cond_1

    .line 981
    invoke-virtual {v14, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    .line 982
    .local v15, "t":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 983
    if-nez v4, :cond_0

    .line 984
    new-array v4, v9, [Ljava/lang/String;

    .line 986
    :cond_0
    aput-object v15, v4, v11

    .line 978
    .end local v15    # "t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 994
    .end local v9    # "N":I
    .end local v11    # "i":I
    .end local v14    # "sp":Landroid/content/Intent;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 995
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    .line 994
    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    .line 996
    .local v12, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v12, :cond_3

    .line 997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 999
    :cond_3
    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1000
    .end local v12    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v10

    .line 1001
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1079
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    invoke-interface {v2, p1, v3, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1081
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 1082
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1084
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1085
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1048
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1049
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1048
    invoke-interface {v3, p1, v4, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1051
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 1052
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1055
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1057
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1058
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3, v4, p0, v1}, Landroid/content/res/Resources;->addAppsNames(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :cond_1
    return-object v1

    .line 1062
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 391
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 392
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 394
    .local v2, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v2, :cond_0

    .line 395
    return-object v2

    .line 398
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    .end local v2    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 2182
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "permissionGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2191
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2375
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2376
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    .line 2377
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 2376
    invoke-direct {v0, p1, v2}, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 2374
    return-void

    .line 2380
    :catch_0
    move-exception v1

    .line 2381
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2375
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .prologue
    .line 1914
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    .line 1915
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    .local v0, "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    if-eqz v0, :cond_0

    .line 1918
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 1919
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1913
    return-void

    .line 1920
    :catch_0
    move-exception v1

    .line 1921
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1914
    .end local v0    # "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2668
    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "removePackageFromPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 2701
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    return-void

    .line 2702
    :catch_0
    move-exception v6

    .line 2703
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .prologue
    .line 2712
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    return-void

    .line 2713
    :catch_0
    move-exception v6

    .line 2714
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 920
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 926
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 928
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 926
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1104
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 1033
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1035
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1037
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 1033
    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 3107
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3108
    const-string/jumbo v2, "com.samsung.android.icon_container.use_icon_container"

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 3107
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3109
    :catch_0
    move-exception v0

    .line 3112
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1271
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetActivityIconForIconTray(Landroid/content/Intent;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1277
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/app/ApplicationPackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1281
    :cond_0
    const/high16 v1, 0x10000

    .line 1280
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1282
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 1283
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1286
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 1304
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1309
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageItemName"    # Ljava/lang/String;

    .prologue
    .line 1450
    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 16
    .param p1, "packageItemName"    # Ljava/lang/String;

    .prologue
    .line 1325
    const-string/jumbo v13, "ZVV"

    const-string/jumbo v14, "ro.csc.sales_code"

    const-string/jumbo v15, "null"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1326
    .local v6, "isZVVCSC":Z
    const/4 v10, 0x0

    .line 1327
    .local v10, "simOperator":Ljava/lang/String;
    const-string/jumbo v13, "ro.multisim.simslotcount"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1328
    .local v3, "deviceSlotCount":I
    const-string/jumbo v13, "com.android.stk"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1329
    const-string/jumbo v13, "com.android.stk.StkLauncherActivity"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1328
    if-nez v13, :cond_0

    .line 1330
    const-string/jumbo v13, "com.android.stk.StkLauncherActivity1"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1328
    if-nez v13, :cond_0

    .line 1331
    const-string/jumbo v13, "com.sec.android.app.latin.launcher.stk"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1328
    if-nez v13, :cond_0

    .line 1332
    const-string/jumbo v13, "com.sec.android.app.latin.launcher.stk.StkShortcutWidget"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1328
    if-eqz v13, :cond_9

    .line 1333
    :cond_0
    const/4 v1, 0x0

    .line 1334
    .local v1, "appName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1335
    .local v11, "stkResource":Landroid/content/res/Resources;
    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1337
    .local v9, "salesCode":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v13}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "com.android.stk"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1338
    .local v11, "stkResource":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1339
    .local v2, "appNameId":I
    const-string/jumbo v13, "CHU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1340
    const/4 v13, 0x2

    if-ne v3, v13, :cond_3

    .line 1341
    const-string/jumbo v13, "app_name_cu"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1346
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1347
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1349
    .end local v1    # "appName":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_4

    .line 1350
    return-object v1

    .line 1343
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "app_name_cu_single"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1352
    .end local v2    # "appNameId":I
    .end local v11    # "stkResource":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 1353
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "ApplicationPackageManager"

    const-string/jumbo v14, "com.android.stk"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    .line 1357
    .local v10, "simOperator":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 1358
    if-eqz v6, :cond_8

    const-string/jumbo v13, "72406"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "72410"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1359
    const-string/jumbo v13, "72411"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1358
    if-nez v13, :cond_5

    .line 1359
    const-string/jumbo v13, "72423"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1357
    if-eqz v13, :cond_8

    .line 1361
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    .line 1362
    const-string/jumbo v14, "CscFeature_Launcher_FixedStkTitleAs"

    .line 1361
    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1363
    .local v5, "fixedStkTitle":Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 1364
    const-string/jumbo v13, "NoSIM%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1365
    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1366
    .local v8, "mSplitStkTitle":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v8, v13

    return-object v13

    .line 1367
    .end local v8    # "mSplitStkTitle":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v13, "NoSIM%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1368
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 1369
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    .line 1368
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_8

    .line 1370
    :cond_7
    const-string/jumbo v13, "%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1371
    .local v7, "mSplitNoSIM":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v7, v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1372
    .restart local v8    # "mSplitStkTitle":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v8, v13

    return-object v13

    .line 1378
    .end local v5    # "fixedStkTitle":Ljava/lang/String;
    .end local v7    # "mSplitNoSIM":[Ljava/lang/String;
    .end local v8    # "mSplitStkTitle":[Ljava/lang/String;
    :cond_8
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 1379
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_9

    .line 1380
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 1384
    .end local v9    # "salesCode":Ljava/lang/String;
    .end local v10    # "simOperator":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "com.android.stk2"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1385
    const-string/jumbo v13, "com.android.stk2.StkLauncherActivity2"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1384
    if-nez v13, :cond_a

    .line 1386
    const-string/jumbo v13, "com.android.stk2.StkLauncherActivity"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1384
    if-eqz v13, :cond_14

    .line 1387
    :cond_a
    const/4 v1, 0x0

    .line 1388
    .restart local v1    # "appName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1389
    .local v11, "stkResource":Landroid/content/res/Resources;
    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1391
    .restart local v9    # "salesCode":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v13}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "com.android.stk2"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1392
    .local v11, "stkResource":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1393
    .restart local v2    # "appNameId":I
    const-string/jumbo v13, "CHU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1394
    const/4 v13, 0x2

    if-ne v3, v13, :cond_d

    .line 1395
    const-string/jumbo v13, "app_name_cu"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk2"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1400
    :cond_b
    :goto_1
    if-eqz v2, :cond_c

    .line 1401
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .end local v1    # "appName":Ljava/lang/String;
    :cond_c
    if-eqz v1, :cond_e

    .line 1404
    return-object v1

    .line 1397
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_d
    const-string/jumbo v13, "app_name_cu_single"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk2"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 1406
    .end local v2    # "appNameId":I
    .end local v11    # "stkResource":Landroid/content/res/Resources;
    :catch_1
    move-exception v4

    .line 1407
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "ApplicationPackageManager"

    const-string/jumbo v14, "com.android.stk2"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    const/4 v13, 0x1

    if-ne v3, v13, :cond_11

    .line 1412
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    .line 1416
    :cond_f
    :goto_2
    if-eqz v6, :cond_10

    .line 1417
    if-eqz v6, :cond_13

    const-string/jumbo v13, "72406"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v13, "72410"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 1418
    const-string/jumbo v13, "72411"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1417
    if-nez v13, :cond_10

    .line 1418
    const-string/jumbo v13, "72423"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1416
    if-eqz v13, :cond_13

    .line 1419
    :cond_10
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1420
    .restart local v5    # "fixedStkTitle":Ljava/lang/String;
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_12

    .line 1421
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_12

    .line 1422
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    .line 1423
    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1424
    .restart local v8    # "mSplitStkTitle":[Ljava/lang/String;
    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    .line 1425
    const/4 v13, 0x1

    aget-object v13, v8, v13

    const-string/jumbo v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1426
    .local v12, "stkSlot2String":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    return-object v13

    .line 1413
    .end local v5    # "fixedStkTitle":Ljava/lang/String;
    .end local v8    # "mSplitStkTitle":[Ljava/lang/String;
    .end local v12    # "stkSlot2String":[Ljava/lang/String;
    :cond_11
    const/4 v13, 0x2

    if-ne v3, v13, :cond_f

    .line 1414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "simOperator":Ljava/lang/String;
    goto :goto_2

    .line 1430
    .end local v10    # "simOperator":Ljava/lang/String;
    .restart local v5    # "fixedStkTitle":Ljava/lang/String;
    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    .line 1431
    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1432
    .restart local v8    # "mSplitStkTitle":[Ljava/lang/String;
    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    .line 1433
    const/4 v13, 0x1

    aget-object v13, v8, v13

    return-object v13

    .line 1440
    .end local v5    # "fixedStkTitle":Ljava/lang/String;
    .end local v8    # "mSplitStkTitle":[Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 1441
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_14

    .line 1442
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 1445
    .end local v9    # "salesCode":Ljava/lang/String;
    :cond_14
    const/4 v13, 0x0

    return-object v13
.end method

.method public semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 3129
    packed-switch p2, :pswitch_data_0

    .line 3140
    :goto_0
    :pswitch_0
    return-object p1

    .line 3133
    :pswitch_1
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->checkAppIconThemePackage()V

    .line 3134
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->appIconPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public semGetSystemFeatureLevel(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 612
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 640
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public semShouldPackIntoIconTray(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3118
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3119
    const-string/jumbo v3, "com.samsung.android.icon_container.has_icon_container"

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    .line 3118
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 3120
    :catch_0
    move-exception v0

    .line 3123
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 2769
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2770
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2769
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    return-void

    .line 2771
    :catch_0
    move-exception v6

    .line 2772
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V
    .locals 9
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "usePending"    # Z
    .param p5, "startNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIZZ)V"
        }
    .end annotation

    .prologue
    .line 3941
    .local p1, "listPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v6

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3939
    :goto_0
    return-void

    .line 3942
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2798
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2799
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 2798
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2800
    :catch_0
    move-exception v0

    .line 2801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 2750
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    return-void

    .line 2751
    :catch_0
    move-exception v0

    .line 2752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2339
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEphemeralCookie([B)Z
    .locals 4
    .param p1, "cookie"    # [B

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 912
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 911
    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setEphemeralApplicationCookie(Ljava/lang/String;[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 2349
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    return-void

    .line 2350
    :catch_0
    move-exception v0

    .line 2351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2636
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2637
    :catch_0
    move-exception v0

    .line 2638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 734
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 733
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;

    .prologue
    .line 2389
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2390
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2391
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    .line 2392
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    iget-object v3, v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 2394
    :try_start_1
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2398
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2389
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2395
    .restart local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catch_0
    move-exception v1

    .line 2396
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    .line 2388
    return-void
.end method

.method public updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2291
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 724
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 723
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    return-void

    .line 725
    :catch_0
    move-exception v6

    .line 726
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2273
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    return-void

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public verifyPendingInstall(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "response"    # I

    .prologue
    .line 2254
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    return-void

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
