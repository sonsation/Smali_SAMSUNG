.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$1;,
        Lcom/android/server/location/FlpHardwareProvider$2;,
        Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;,
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_CORE_BATCHING:I = 0xcabc

.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FIRST_VERSION_WITH_ONLOCATION_CONVERT:I = 0xc9f4

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MSG_BATCHING_START:I = 0x65

.field private static final MSG_BATCHING_STOP:I = 0x66

.field private static final MSG_BATCHING_UPDATE:I = 0x67

.field private static final MSG_FLP_HARDWARE:I = 0x64

.field private static final MSG_REPORT_LOCATION:I = 0x68

.field private static final SLOCATION_CORE_BATCHING:I = 0x2

.field private static final SLOCATION_NOT_SUPPORTED:I = 0x0

.field private static final SLOCATION_ONLOCATION_HANDLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

.field private mSLocationService:Lcom/samsung/android/location/ISLocationManager;

.field private mVersion:I

.field private manager:Landroid/location/LocationManager;

.field private onLocationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private slocationVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "deviceEnabledContext"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0
    .param p1, "geofenceIdsArray"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "lastNLocations"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "optionsObject"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/FlpHardwareProvider;[Landroid/location/Location;)V
    .locals 0
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->onLocationReport([Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)Z
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->startCoreBatching(ILandroid/location/FusedBatchOptions;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)Z
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateCoreBatching(ILandroid/location/FusedBatchOptions;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getSLocationSupportLevel()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 399
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 65
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 69
    iput v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 75
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    .line 78
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    .line 107
    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    .line 111
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    .line 464
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 598
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 597
    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    .line 123
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    .line 126
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    .line 127
    const-wide/16 v2, 0x0

    .line 128
    .local v2, "minTime":J
    const/4 v0, 0x0

    .line 129
    .local v0, "minDistance":F
    const/4 v1, 0x0

    .line 131
    .local v1, "oneShot":Z
    const-string/jumbo v5, "passive"

    .line 132
    const-wide/16 v6, 0x0

    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v9, 0x0

    .line 130
    invoke-static {v5, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v4

    .line 137
    .local v4, "request":Landroid/location/LocationRequest;
    invoke-virtual {v4, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 138
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    .line 140
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v10}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;)V

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 138
    invoke-virtual {v5, v4, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 143
    const-string/jumbo v5, "sec_location"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    .line 144
    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-direct {v5, p0, v10}, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    .line 122
    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 670
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 116
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    .line 119
    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getSLocationSupportLevel()I
    .locals 7

    .prologue
    const v5, 0xcabc

    const/4 v6, 0x0

    .line 160
    const-string/jumbo v3, "FlpHardwareProvider"

    const-string/jumbo v4, "getSLocationSupportLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 162
    const-string/jumbo v3, "FlpHardwareProvider"

    const-string/jumbo v4, "mSLocationService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v6

    .line 166
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    if-gez v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 168
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.samsung.android.location"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 170
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    .line 172
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget v3, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    const v4, 0xc9f4

    if-le v3, v4, :cond_2

    .line 173
    iget v3, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    if-ge v3, v5, :cond_2

    .line 174
    const/4 v3, 0x1

    return v3

    .line 175
    :cond_2
    iget v3, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    if-le v3, v5, :cond_3

    .line 176
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v3}, Lcom/samsung/android/location/ISLocationManager;->isCoreBatchingSupported()Z

    move-result v3

    .line 175
    if-eqz v3, :cond_3

    .line 177
    const/4 v3, 0x2

    return v3

    .line 179
    :cond_3
    const-string/jumbo v3, "FlpHardwareProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SLocation version is not supported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/FlpHardwareProvider;->slocationVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return v6

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    return v6
.end method

.method private getVersion()I
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_0

    .line 276
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 279
    const/4 v0, 0x1

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.location.hwflp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedForSec()Z
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    .prologue
    .line 293
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 295
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 296
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "batchingCapabilities":I
    monitor-exit v5

    .line 299
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 300
    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 293
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 302
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FlpHardwareProvider"

    const-string/jumbo v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 245
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 248
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    .line 250
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 242
    :cond_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    .line 261
    if-eqz v1, :cond_0

    .line 262
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 257
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 264
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    .line 314
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_0

    .line 315
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 310
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 317
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 371
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 369
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 368
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_0

    .line 344
    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 348
    .end local v1    # "updatedLocation":Landroid/location/Location;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 356
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x1

    .line 361
    .local v0, "monitorStatus":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    .line 362
    const/4 v3, 0x1

    .line 361
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 340
    return-void

    .line 350
    .end local v0    # "monitorStatus":I
    :pswitch_0
    const/4 v0, 0x1

    .line 351
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 353
    .end local v0    # "monitorStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 354
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 383
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 381
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 380
    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 377
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 375
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 374
    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 389
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 387
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 386
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 333
    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    .line 336
    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    .line 331
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 328
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    .line 392
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 8
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    .line 217
    const-string/jumbo v3, "FlpHardwareProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLocationReport size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v3, 0x68

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    .line 223
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    .line 224
    .local v1, "location":Landroid/location/Location;
    const-string/jumbo v5, "fused"

    invoke-virtual {v1, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3

    .line 234
    if-eqz v2, :cond_1

    .line 235
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_1
    :goto_1
    return-void

    .line 230
    .end local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 237
    .restart local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FlpHardwareProvider"

    const-string/jumbo v4, "RemoteException calling onLocationAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 707
    const-wide/16 v4, -0x1

    .line 708
    .local v4, "interval":J
    const/4 v6, 0x0

    .line 709
    .local v6, "mSourcesToUse":I
    const/4 v3, 0x0

    .line 710
    .local v3, "mFlags":I
    const-wide/16 v8, 0x0

    .line 711
    .local v8, "maxPowerAlloc":D
    const/4 v10, 0x0

    .line 713
    .local v10, "smallestDisplacementMeters":F
    if-eqz p3, :cond_0

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getPeriodInNS()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long v4, v12, v14

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSourcesToUse()I

    move-result v6

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v3

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getMaxPowerAllocationInMW()D

    move-result-wide v8

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSmallestDisplacementMeters()F

    move-result v10

    .line 721
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 722
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "type"

    move/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string/jumbo v11, "requestId"

    move/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    const-string/jumbo v11, "interval"

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 725
    const-string/jumbo v11, "sourcesToUse"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string/jumbo v11, "flags"

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string/jumbo v11, "maxPowerAlloc"

    invoke-virtual {v2, v11, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 728
    const-string/jumbo v11, "smallestDisplacement"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 730
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 731
    .local v7, "msg":Landroid/os/Message;
    const/16 v11, 0x64

    iput v11, v7, Landroid/os/Message;->what:I

    .line 732
    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 734
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    invoke-virtual {v11, v7}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method private setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 284
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 282
    :cond_0
    return-void
.end method

.method private startCoreBatching(ILandroid/location/FusedBatchOptions;)Z
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 740
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getSLocationSupportLevel()I

    move-result v1

    .line 741
    .local v1, "slocationStatus":I
    if-lez v1, :cond_2

    .line 743
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 744
    :try_start_0
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert HW FLP request : startCoreBatching id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 751
    return v6

    .line 745
    :cond_0
    if-ne v1, v6, :cond_1

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v2

    sget v3, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v2, v3, :cond_1

    .line 746
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert HW FLP request : startBatching id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v5

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v5

    .line 757
    :cond_2
    return v5
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6
    .param p0, "flpHalResult"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 677
    packed-switch p0, :pswitch_data_0

    .line 693
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v5

    .line 679
    :pswitch_0
    return v4

    .line 681
    :pswitch_1
    return v5

    .line 683
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 685
    :pswitch_3
    return v2

    .line 687
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 689
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 691
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCoreBatching(ILandroid/location/FusedBatchOptions;)Z
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 761
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getSLocationSupportLevel()I

    move-result v1

    .line 763
    .local v1, "slocationStatus":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 764
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/location/ISLocationManager;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 765
    return v6

    .line 766
    :cond_0
    if-ne v1, v6, :cond_4

    .line 767
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBatchingOptions id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v2

    sget v3, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v2, v3, :cond_1

    .line 769
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 768
    if-eqz v2, :cond_1

    .line 770
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert HW FLP request : updateBatchingOptions id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/location/ISLocationManager;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 782
    :goto_0
    return v6

    .line 772
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->stopCoreBatching(I)V

    .line 774
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 775
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return v5

    .line 776
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v2

    sget v3, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v2, v3, :cond_3

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    .line 778
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationListener:Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 779
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->onLocationIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 781
    :cond_3
    return v5

    .line 784
    :cond_4
    return v5
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 699
    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 702
    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 454
    const-string/jumbo v1, "FlpHardwareProvider"

    const-string/jumbo v2, "Calling nativeCleanup()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeCleanup()V

    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getSLocationSupportLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mSLocationService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
