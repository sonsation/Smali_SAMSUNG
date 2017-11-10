.class public Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final AUTHORITY_INCLUDE_DELETE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters/include_deleted"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final DELETED:Ljava/lang/String; = "deleted"

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_ORDER:Ljava/lang/String; = "filter_order"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

.field private static final FILTER_PROVIDER_PACKAGE_VER1:Ljava/lang/String; = "com.sec.android.filter"

.field private static final FILTER_PROVIDER_PACKAGE_VER2:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final FRONT_DELETED:Ljava/lang/String; = "front_deleted"

.field private static final FRONT_FILTER_ORDER:Ljava/lang/String; = "front_filter_order"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_CATEGORY:I = 0xf

.field private static final INDEX_COUNTRY:I = 0xd

.field private static final INDEX_DELETED:I = 0x10

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_ORDER:I = 0x11

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_FRONT_DELETED:I = 0x13

.field private static final INDEX_FRONT_FILTER_ORDER:I = 0x12

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_RES_NAME:I = 0xe

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final RES_NAME:Ljava/lang/String; = "resource_name"

.field private static final TAG:Ljava/lang/String; = "ExternalFilterLoader"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mBackExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mDualExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

.field private static mFilterLoaded:Z

.field private static mFrontExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mNeedUpdateLocale:Z


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters/include_deleted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const-string v1, "version"

    aput-object v1, v0, v6

    const-string v1, "vendor"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "front_filter_order"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "front_deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExternalFilterLoader"

    const-string v1, "create ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static getDualFilterHandler(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDualFilterHeight(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getDualFilterPosx(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosx()I

    move-result v0

    return v0
.end method

.method public static getDualFilterPosy(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPosy()I

    move-result v0

    return v0
.end method

.method public static getDualFilterWidth(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p0, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getFilterUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    return-object v0
.end method

.method private getIdByCommandId(I)I
    .locals 3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v1

    if-ne v1, p1, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v1

    monitor-exit v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .locals 2

    const-string v0, "Create ExternalFilterLoader"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isEffectCategorySupported()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VERSION_FILTER_PROVIDER"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalEffect(I)Z
    .locals 1

    const/16 v0, 0x1f40

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    return v0
.end method

.method public static isValidExternalId(I)Z
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit16 v0, p0, -0x1f40

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit16 v0, p0, -0x1f40

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static needToUpdateExternalId(II)Z
    .locals 2

    add-int/lit16 v0, p0, -0x1f40

    add-int/lit16 v1, p1, -0x1f40

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, p0, -0x1f40

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalFilterLoader:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "ExternalFilterLoader"

    const-string v1, "clear ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalEffectCount()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    monitor-exit v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalEffectsId(I)I
    .locals 5

    const/4 v2, -0x1

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getId()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalEffectsTitle(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v1

    :cond_1
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v3

    goto :goto_0

    :cond_3
    :try_start_5
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_7
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    :try_start_8
    monitor-exit v4

    goto :goto_0

    :cond_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v3

    goto :goto_0

    :cond_6
    :try_start_9
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_b
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    :try_start_c
    monitor-exit v4

    goto/16 :goto_0

    :cond_8
    monitor-exit v4

    move-object v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public getExternalFilterCategory(I)I
    .locals 5

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getCategory()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getCategory()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_4
    monitor-exit v3

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public getExternalFilterFilterName(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    monitor-exit v4

    :goto_0
    return-object v2

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v5, p1, -0x1f40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    :try_start_6
    monitor-exit v4

    goto :goto_0

    :cond_5
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v3

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterType(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v4, p1, -0x1f40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v3

    goto :goto_0

    :cond_5
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getExternalFilterVendorName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    monitor-exit v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v3, p1, -0x1f40

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVendorName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalFilterVersion(I)I
    .locals 3

    const/4 v0, -0x1

    sget-object v1, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    monitor-exit v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getVersion()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPackageRemoved()Z
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    add-int/lit16 v5, v2, 0x1f40

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v5, v2, 0x1f40

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "ExternalFilterLoader"

    const-string v6, "Some ExternalFilter package has been removed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetCameraEffect()V

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "com.sec.android.filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.aillis.filter.libdelicious.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.b612.filter.libriddle.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libgold.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.pinguo.camera360filter.libsweet.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.libnostalgia.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.thundersoft.ucamera.filter.librose.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libmonogram.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.candycamera.android.filter.libeveryday.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.linecorp.aillis.filter.libsunrise.so"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExternalFilter package ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") has been removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadExternalFilters()Z
    .locals 54

    const-string v3, "ExternalFilterLoader"

    const-string v4, "load ExternalFilterLoader"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isExternalEffectSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v42, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION_WITH_CATEGORY:[Ljava/lang/String;

    :goto_1
    sget-object v53, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v53

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    :goto_2
    const/16 v44, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x0

    if-eqz v42, :cond_10

    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10

    :cond_2
    :goto_3
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v3, 0x1

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v3, "Unnamed filter"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v3, "Unnamed filter"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v3, 0x4

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v3, "Unknown vendor"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x5

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    const-string v3, "Unknown FilterType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xc

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isValidPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xd

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isPreloadPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    const/4 v3, 0x1

    move/from16 v0, v52

    if-ne v0, v3, :cond_b

    const-string v51, "com.sec.android.filter"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    const/16 v3, 0xe

    :try_start_2
    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    move-object/from16 v0, v51

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v48

    const-string v3, "string"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz v13, :cond_2

    :try_start_3
    const-string v3, "Unknown title"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x7

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v3, 0x9

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v3, 0xa

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v21, 0x0

    const/16 v47, 0x0

    const/16 v40, 0x0

    const/16 v46, 0x0

    const/16 v39, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xf

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v3, 0x12

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    const/16 v3, 0x11

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    const/16 v3, 0x13

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    const/16 v3, 0x10

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    :cond_3
    const/16 v3, 0xb

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], category["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_order["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], front_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], back_deleted["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v44

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v21, :cond_4

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_5

    :cond_4
    if-nez v39, :cond_5

    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v38

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mBackExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v38, v38, 0x1

    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_6

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_7

    :cond_6
    if-nez v46, :cond_7

    new-instance v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v45

    add-int/lit16 v8, v0, 0x1f40

    invoke-direct/range {v6 .. v21}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFrontExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v45, v45, 0x1

    :cond_7
    :goto_6
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_3

    :cond_8
    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI_INCLUDE_DELETE:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "front_filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x2

    move/from16 v0, v52

    if-ne v0, v3, :cond_c

    const-string v51, "com.samsung.android.provider.filterprovider"

    goto/16 :goto_4

    :cond_c
    move-object/from16 v51, v19

    goto/16 :goto_4

    :catch_0
    move-exception v43

    const/4 v3, 0x6

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_d
    const/4 v3, 0x6

    move-object/from16 v0, v42

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_e
    const-string v3, "ExternalFilterLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], effectName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filterName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], version["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], vendor["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], filter_type["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], title["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posx["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], posy["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], width["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], height["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], handler["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "], packageName["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v22, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v44

    add-int/lit16 v0, v0, 0x1f40

    move/from16 v24, v0

    move/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v36, v20

    invoke-direct/range {v22 .. v36}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v3

    if-eqz v42, :cond_f

    :try_start_5
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v53
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :cond_10
    :try_start_6
    sget-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.filterprovider.LOCALE_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mNeedUpdateLocale:Z

    :cond_11
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mFilterLoaded:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v42, :cond_12

    :try_start_7
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_12
    monitor-exit v53
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public saveOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v5, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getIdByCommandId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_ID=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "front_filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "ExternalFilterLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveOrder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_4
    :try_start_4
    const-string v4, "filter_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_5
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method
