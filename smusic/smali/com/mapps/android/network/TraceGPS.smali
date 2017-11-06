.class public Lcom/mapps/android/network/TraceGPS;
.super Ljava/lang/Object;
.source "TraceGPS.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mDebug:Z

.field private static mListener:Landroid/location/LocationListener;

.field private static mLocationManager:Landroid/location/LocationManager;

.field public static mUzipcode:Ljava/lang/String;

.field public static m_strlatitude:Ljava/lang/String;

.field public static m_strlongitude:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mapps/android/network/TraceGPS;->mDebug:Z

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->m_strlatitude:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->m_strlongitude:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->mUzipcode:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/mapps/android/network/TraceGPS$1;

    invoke-direct {v0}, Lcom/mapps/android/network/TraceGPS$1;-><init>()V

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->mListener:Landroid/location/LocationListener;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDeviceLocation(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debug"    # Z

    .prologue
    .line 34
    sput-boolean p1, Lcom/mapps/android/network/TraceGPS;->mDebug:Z

    .line 35
    sput-object p0, Lcom/mapps/android/network/TraceGPS;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    .line 39
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/mapps/android/network/TraceGPS;->mListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 40
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/mapps/android/network/TraceGPS;->mListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v6

    .line 42
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static GpsTraceStop()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/mapps/android/network/TraceGPS;->mListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/mapps/android/network/TraceGPS;->mDebug:Z

    return v0
.end method

.method static synthetic access$1(DD)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/mapps/android/network/TraceGPS;->getPostNumber(DD)V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/mapps/android/network/TraceGPS;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getPostNumber(DD)V
    .locals 2
    .param p0, "lat"    # D
    .param p2, "longi"    # D

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/network/TraceGPS$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mapps/android/network/TraceGPS$2;-><init>(DD)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method
