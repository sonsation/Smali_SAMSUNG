.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$1;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$2;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sendIntent"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 100
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 139
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 123
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->initializeHandlerThread()V

    .line 125
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 126
    const-string/jumbo v2, "enterprise_policy_new"

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/BoundingBox;"
        }
    .end annotation

    .prologue
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v6, 0x0

    .line 1762
    const/4 v0, 0x0

    .line 1763
    .local v0, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    if-eqz p1, :cond_4

    .line 1764
    new-instance v0, Lcom/samsung/android/knox/location/BoundingBox;

    .end local v0    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    .line 1765
    .local v0, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1766
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1768
    .local v2, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 1769
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1771
    :cond_0
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 1772
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1774
    :cond_1
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 1775
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1777
    :cond_2
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 1779
    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1765
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    .end local v0    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    .end local v1    # "i":I
    .end local v2    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_4
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "boundingBox"    # Lcom/samsung/android/knox/location/BoundingBox;

    .prologue
    const/4 v6, 0x0

    .line 1428
    if-eqz p1, :cond_0

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v4, :cond_1

    .line 1429
    :cond_0
    return v6

    .line 1430
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1431
    .local v0, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1433
    .local v2, "lng":D
    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_2

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    .line 1434
    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 1435
    const/4 v4, 0x1

    return v4

    .line 1437
    :cond_2
    return v6
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z
    .locals 28
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "cfence"    # Lcom/samsung/android/knox/location/CircularGeofence;

    .prologue
    .line 1393
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    .line 1394
    .local v16, "pointlat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 1395
    .local v18, "pointlong":D
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 1396
    .local v2, "centerlat":D
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 1398
    .local v4, "centerlong":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1399
    .local v10, "lat2":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 1400
    .local v14, "lon2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1401
    .local v8, "lat1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1403
    .local v12, "lon1":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    move-wide/from16 v22, v0

    const-wide v24, 0x409925604189374cL    # 1609.344

    mul-double v20, v24, v22

    .line 1405
    .local v20, "radInMiles":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 1406
    sub-double v26, v14, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 1405
    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v22

    .line 1391
    const-wide v24, 0x40b8e30000000000L    # 6371.0

    .line 1405
    mul-double v22, v22, v24

    .line 1407
    const-wide v24, 0x408f400000000000L    # 1000.0

    .line 1405
    mul-double v6, v22, v24

    .line 1408
    .local v6, "distance":D
    cmpg-double v22, v6, v20

    if-gtz v22, :cond_0

    .line 1409
    const/16 v22, 0x1

    return v22

    .line 1412
    :cond_0
    const/16 v22, 0x0

    return v22
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z
    .locals 9
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "lFence"    # Lcom/samsung/android/knox/location/LinearGeofence;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1544
    iget-object v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1545
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v6, 0x1

    .line 1546
    .local v6, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1547
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    .line 1546
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    .line 1548
    .local v6, "status":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 1549
    return v7

    .local v6, "status":Z
    :cond_0
    move v6, v8

    .line 1546
    goto :goto_0

    .line 1552
    .local v6, "status":Z
    :cond_1
    return v8
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sendIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1319
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1325
    .local v1, "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1328
    .local v0, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/Geofence;

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1329
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1333
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 1334
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    .line 1337
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v4

    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    monitor-exit p0

    return-object v2

    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit p0

    .line 1340
    return-object v4
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z
    .locals 11
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "pFence"    # Lcom/samsung/android/knox/location/PolygonalGeofence;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1494
    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1495
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v8, 0x1

    .line 1497
    .local v8, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1498
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    .line 1497
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v8, v9

    .line 1499
    .local v8, "status":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 1500
    return v9

    .local v8, "status":Z
    :cond_0
    move v8, v10

    .line 1497
    goto :goto_0

    .line 1502
    .local v8, "status":Z
    :cond_1
    iget-object v3, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    .line 1503
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    .line 1502
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    .line 1504
    :goto_1
    if-eqz v8, :cond_3

    .line 1505
    return v9

    :cond_2
    move v8, v10

    .line 1502
    goto :goto_1

    .line 1507
    :cond_3
    return v10
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 12
    .param p2, "testx"    # D
    .param p4, "testy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    .prologue
    .line 1451
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x0

    .line 1452
    .local v0, "c":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1453
    .local v3, "nvert":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [D

    .line 1454
    .local v4, "vertx":[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [D

    .line 1456
    .local v5, "verty":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1457
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v6, v4, v1

    .line 1458
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v6, v5, v1

    .line 1456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1472
    aget-wide v6, v5, v1

    cmpl-double v6, v6, p4

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    aget-wide v8, v5, v2

    cmpl-double v7, v8, p4

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    if-eq v6, v7, :cond_1

    .line 1473
    aget-wide v6, v4, v2

    aget-wide v8, v4, v1

    sub-double/2addr v6, v8

    aget-wide v8, v5, v1

    sub-double v8, p4, v8

    mul-double/2addr v6, v8

    aget-wide v8, v5, v2

    aget-wide v10, v5, v1

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 1474
    aget-wide v8, v4, v1

    .line 1473
    add-double/2addr v6, v8

    cmpg-double v6, p2, v6

    if-gtz v6, :cond_1

    .line 1475
    if-nez v0, :cond_4

    .line 1476
    const/4 v0, 0x1

    .line 1471
    :cond_1
    :goto_4
    move v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1472
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1478
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 1481
    :cond_5
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "fence"    # Lcom/samsung/android/knox/location/Geofence;

    .prologue
    const/4 v2, 0x1

    .line 1353
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    if-ne v0, v2, :cond_0

    .line 1354
    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    .end local p2    # "fence":Lcom/samsung/android/knox/location/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1355
    return v2

    .line 1357
    .restart local p2    # "fence":Lcom/samsung/android/knox/location/Geofence;
    :cond_0
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, p2

    .line 1358
    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .end local p2    # "fence":Lcom/samsung/android/knox/location/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    return v2

    .line 1364
    .restart local p2    # "fence":Lcom/samsung/android/knox/location/Geofence;
    :cond_1
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move-object v0, p2

    .line 1365
    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    .end local p2    # "fence":Lcom/samsung/android/knox/location/Geofence;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    return v2

    .line 1372
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized checkMonitoring()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 1964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 1965
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    .line 1969
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v1, :cond_1

    .line 1970
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1971
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1974
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    .line 1976
    return-void

    .line 1980
    :cond_2
    :try_start_1
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 1981
    .local v5, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1982
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1983
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1984
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1985
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1987
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;)V

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1989
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v2

    .line 1990
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v4

    .line 1991
    sget-object v6, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1989
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "criteria":Landroid/location/Criteria;
    :goto_0
    monitor-exit p0

    .line 1962
    return-void

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "GeofenceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMonitoring - EX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1995
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .locals 14
    .param p1, "lFence"    # Lcom/samsung/android/knox/location/LinearGeofence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/location/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1274
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v3, -0x1

    .line 1275
    .local v1, "j":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v8, "pointList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_0

    .line 1278
    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v4, v10, v12

    .line 1279
    .local v4, "midValueLat":D
    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v6, v10, v12

    .line 1280
    .local v6, "midValueLong":D
    new-instance v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1281
    .local v2, "lTemp":Lcom/samsung/android/knox/location/LatLongPoint;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    add-int/lit8 v1, v1, -0x1

    .line 1277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1285
    .end local v2    # "lTemp":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v4    # "midValueLat":D
    .end local v6    # "midValueLong":D
    :cond_0
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .locals 42
    .param p2, "graceDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v14, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v25, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v17, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const-wide/16 v28, 0x0

    .local v28, "slopePerpendicularAB":D
    const-wide/16 v8, 0x0

    .line 855
    .local v8, "distanceToPoint":D
    const-wide v36, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v36

    .line 860
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_a

    .line 861
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_4

    .line 862
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 863
    .local v6, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 869
    .local v7, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_1
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    const-wide/16 v38, 0x0

    cmpl-double v36, v36, v38

    if-nez v36, :cond_0

    .line 870
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmpl-double v36, v36, v38

    if-ltz v36, :cond_5

    .line 871
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v0

    .line 847
    const-wide v38, 0x3f747ae147ae147bL    # 0.005

    .line 871
    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 876
    :cond_0
    :goto_2
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    const-wide/16 v38, 0x0

    cmpl-double v36, v36, v38

    if-nez v36, :cond_1

    .line 877
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x0

    cmpl-double v36, v36, v38

    if-ltz v36, :cond_6

    .line 878
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    .line 849
    const-wide v38, 0x3f747ae147ae147bL    # 0.005

    .line 878
    sub-double v36, v36, v38

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 883
    :cond_1
    :goto_3
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    sub-double v38, v38, v40

    div-double v26, v36, v38

    .line 885
    .local v26, "slopeAB":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v22, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    add-double v38, v38, v40

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v38, v38, v40

    move-object/from16 v0, v22

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 893
    .local v22, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    div-double v36, v36, v26

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v28, v0

    .line 896
    mul-double v36, v28, v28

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 895
    div-double v8, p2, v36

    .line 899
    const-wide/16 v36, 0x0

    cmpl-double v36, v26, v36

    if-lez v36, :cond_7

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    cmpg-double v36, v36, v38

    if-gez v36, :cond_7

    .line 901
    :cond_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    mul-double v38, v28, v8

    add-double v32, v36, v38

    .line 902
    .local v32, "yNewAbove":D
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    sub-double v36, v32, v36

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    mul-double v38, v38, v28

    add-double v36, v36, v38

    div-double v30, v36, v28

    .line 904
    .local v30, "xNewAbove":D
    new-instance v36, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v36

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v30    # "xNewAbove":D
    .end local v32    # "yNewAbove":D
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 865
    .end local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v22    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v26    # "slopeAB":D
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 866
    .restart local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v36, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .restart local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_1

    .line 873
    :cond_5
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v0

    .line 847
    const-wide v38, 0x3f747ae147ae147bL    # 0.005

    .line 873
    add-double v36, v36, v38

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto/16 :goto_2

    .line 880
    :cond_6
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    .line 849
    const-wide v38, 0x3f747ae147ae147bL    # 0.005

    .line 880
    add-double v36, v36, v38

    move-wide/from16 v0, v36

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto/16 :goto_3

    .line 900
    .restart local v22    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v26    # "slopeAB":D
    :cond_7
    const-wide/16 v36, 0x0

    cmpg-double v36, v26, v36

    if-gez v36, :cond_8

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    cmpl-double v36, v36, v38

    if-gtz v36, :cond_2

    .line 909
    :cond_8
    const-wide/16 v36, 0x0

    cmpl-double v36, v26, v36

    if-lez v36, :cond_9

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    cmpl-double v36, v36, v38

    if-lez v36, :cond_9

    .line 911
    :goto_5
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    mul-double v38, v28, v8

    sub-double v32, v36, v38

    .line 912
    .restart local v32    # "yNewAbove":D
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    sub-double v36, v32, v36

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    mul-double v38, v38, v28

    add-double v36, v36, v38

    div-double v30, v36, v28

    .line 914
    .restart local v30    # "xNewAbove":D
    new-instance v36, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v36

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 910
    .end local v30    # "xNewAbove":D
    .end local v32    # "yNewAbove":D
    :cond_9
    const-wide/16 v36, 0x0

    cmpg-double v36, v26, v36

    if-gez v36, :cond_3

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    cmpg-double v36, v36, v38

    if-gez v36, :cond_3

    goto :goto_5

    .line 924
    .end local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v22    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v26    # "slopeAB":D
    :cond_a
    const/16 v34, 0x0

    .line 925
    .local v34, "z":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v36

    add-int/lit8 v35, v36, -0x1

    .line 926
    .local v35, "z1":I
    const/4 v15, 0x0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    add-int/lit8 v16, v36, -0x1

    .local v16, "j":I
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-ge v15, v0, :cond_b

    .line 928
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Double;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 929
    .local v18, "m1":D
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Double;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 930
    .local v20, "m2":D
    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 931
    .local v23, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 932
    .local v24, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v38, v0

    mul-double v38, v38, v20

    sub-double v36, v36, v38

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    mul-double v40, v40, v18

    sub-double v38, v38, v40

    sub-double v36, v36, v38

    .line 933
    sub-double v38, v18, v20

    .line 932
    div-double v10, v36, v38

    .line 934
    .local v10, "finx":D
    mul-double v36, v18, v10

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v38, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    mul-double v40, v40, v18

    sub-double v38, v38, v40

    add-double v12, v36, v38

    .line 935
    .local v12, "finy":D
    new-instance v36, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v36

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v36

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    move/from16 v35, v34

    add-int/lit8 v34, v34, 0x1

    .line 926
    move/from16 v16, v15

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 941
    .end local v10    # "finx":D
    .end local v12    # "finy":D
    .end local v18    # "m1":D
    .end local v20    # "m2":D
    .end local v23    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v24    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_b
    return-object v14
.end method

.method private declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "_id"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1741
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1742
    .local v1, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1743
    .local v0, "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "GEOFENCING"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 1746
    return v4

    .line 1748
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1749
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .end local v0    # "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    monitor-enter p0

    .line 1214
    const/4 v1, 0x0

    .line 1217
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    .line 1218
    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 1221
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1223
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1224
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1226
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 1227
    const-string/jumbo v5, "_id"

    .line 1226
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1231
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 1232
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    if-eqz v1, :cond_0

    .line 1236
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 1213
    return-void

    .line 1235
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v1, :cond_0

    .line 1236
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1237
    :catch_1
    move-exception v3

    .local v3, "ignore":Ljava/lang/Exception;
    goto :goto_1

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "ignore":Ljava/lang/Exception;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .restart local v3    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    .line 1233
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1235
    if-eqz v1, :cond_2

    .line 1236
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1233
    :cond_2
    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1237
    :catch_3
    move-exception v3

    .restart local v3    # "ignore":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1296
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1297
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1298
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    return-object v3

    .line 1302
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1303
    .local v2, "ioe":Ljava/io/IOException;
    return-object v5

    .line 1300
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1301
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    return-object v5
.end method

.method private deviceLocationUnavailableMessage(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, -0x1

    .line 1689
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1692
    const-string/jumbo v3, "admin_uid"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1693
    if-eq p1, v6, :cond_0

    .line 1694
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1696
    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v2

    .line 1698
    .local v2, "ownerUid":I
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1699
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 1698
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1700
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "edm.intent.action.device.location.unavailable"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    .local v1, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v3, "edm.intent.extra.geofence.user.id"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1702
    const-string/jumbo v3, "admin_uid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1703
    if-eq p1, v6, :cond_1

    .line 1704
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1707
    const-string/jumbo v5, "android.permission.sec.MDM_GEOFENCING"

    .line 1706
    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method private enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_GEOFENCING"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 296
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 295
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1797
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    .local v4, "collinear":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v11, 0x0

    .line 1800
    .local v11, "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1802
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x1

    .local v6, "j":I
    const/4 v7, 0x2

    .end local v11    # "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v7, "k":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_5

    .line 1803
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1804
    .local v9, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1805
    .local v10, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1809
    .local v11, "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v0, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    .line 1810
    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    .line 1809
    add-double/2addr v12, v14

    .line 1810
    iget-wide v14, v11, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    .line 1809
    add-double v2, v12, v14

    .line 1811
    .local v2, "area":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_3

    .line 1812
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1813
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1814
    :cond_0
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1815
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1816
    :cond_1
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1817
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1802
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1820
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1821
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1822
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1825
    :cond_4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1828
    .end local v2    # "area":D
    .end local v9    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v10    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v11    # "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1857
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1859
    .local v0, "first":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1860
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 1861
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "first":Lcom/samsung/android/knox/location/LatLongPoint;
    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1859
    .restart local v0    # "first":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    :cond_1
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1839
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1841
    .local v1, "last":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1842
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1843
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "last":Lcom/samsung/android/knox/location/LatLongPoint;
    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1841
    .restart local v1    # "last":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1846
    :cond_1
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .locals 12
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1648
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1649
    :cond_0
    return-object v9

    .line 1652
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1655
    .local v7, "userId":I
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    .line 1658
    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    const-string/jumbo v10, "_id"

    const/4 v11, 0x1

    aput-object v10, v0, v11

    .line 1661
    .local v0, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1662
    const-string/jumbo v11, "GEOFENCING"

    .line 1661
    invoke-virtual {v10, v11, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 1665
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1666
    .local v3, "item":Landroid/content/ContentValues;
    const-string/jumbo v10, "_id"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1667
    .local v2, "id":I
    const-string/jumbo v10, "adminUid"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1668
    .local v5, "itemInteger":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1669
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1674
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "id":I
    .end local v3    # "item":Landroid/content/ContentValues;
    .end local v4    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "itemInteger":Ljava/lang/Integer;
    .end local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v1

    .line 1675
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "GeofenceService"

    const-string/jumbo v11, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v10, v11, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1678
    return-object v9

    .line 1673
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v4    # "item$iterator":Ljava/util/Iterator;
    .restart local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    move-object v6, v9

    .end local v6    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    return-object v6
.end method

.method private getEffectiveMinDistanceParameter()F
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 789
    const/4 v4, 0x0

    .line 791
    .local v4, "ret":F
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 792
    const-string/jumbo v7, "distance"

    aput-object v7, v0, v8

    .line 793
    const-string/jumbo v7, "state"

    const/4 v8, 0x1

    aput-object v7, v0, v8

    .line 796
    .local v0, "columns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 797
    const-string/jumbo v8, "GEOFENCINGSETTINGS"

    .line 796
    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 800
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 801
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v7, "state"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 802
    .local v1, "cvInteger":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    .line 808
    :cond_1
    const-string/jumbo v7, "distance"

    .line 807
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v5

    .line 809
    .local v5, "value":F
    cmpl-float v7, v4, v9

    if-nez v7, :cond_2

    .line 810
    move v4, v5

    goto :goto_0

    .line 811
    :cond_2
    cmpl-float v7, v5, v9

    if-eqz v7, :cond_0

    cmpl-float v7, v4, v5

    if-lez v7, :cond_0

    .line 812
    move v4, v5

    goto :goto_0

    .line 816
    .end local v1    # "cvInteger":Ljava/lang/Integer;
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v5    # "value":F
    :cond_3
    return v4
.end method

.method private getEffectiveMinTimeParameter()J
    .locals 14

    .prologue
    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    .line 723
    const-wide/16 v4, 0x0

    .line 725
    .local v4, "ret":J
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .line 726
    const-string/jumbo v9, "time"

    aput-object v9, v0, v10

    .line 727
    const-string/jumbo v9, "state"

    const/4 v10, 0x1

    aput-object v9, v0, v10

    .line 730
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 731
    const-string/jumbo v10, "GEOFENCINGSETTINGS"

    .line 730
    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 734
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 735
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v9, "state"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 736
    .local v1, "cvInteger":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_0

    .line 742
    :cond_1
    const-string/jumbo v9, "time"

    .line 741
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 743
    .local v6, "value":J
    cmp-long v9, v4, v12

    if-nez v9, :cond_2

    .line 744
    move-wide v4, v6

    goto :goto_0

    .line 745
    :cond_2
    cmp-long v9, v6, v12

    if-eqz v9, :cond_0

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 746
    move-wide v4, v6

    goto :goto_0

    .line 750
    .end local v1    # "cvInteger":Ljava/lang/Integer;
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v6    # "value":J
    :cond_3
    cmp-long v9, v4, v12

    if-nez v9, :cond_4

    const-wide/32 v4, 0xea60

    .end local v4    # "ret":J
    :cond_4
    return-wide v4
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1715
    const-string/jumbo v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@getPackageNameForUid - uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_0

    .line 1717
    const/16 v2, 0x4e1f

    if-le p1, v2, :cond_1

    .line 1718
    :cond_0
    const-string/jumbo v2, "GeofenceService"

    const-string/jumbo v3, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v2

    .line 1721
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_INFO"

    .line 1722
    const-string/jumbo v4, "adminName"

    .line 1721
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1724
    const-string/jumbo v2, "GeofenceService"

    const-string/jumbo v3, "@getPackageNameForUid - returning null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    return-object v5

    .line 1728
    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1729
    .local v0, "compName":Landroid/content/ComponentName;
    const-string/jumbo v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initializeHandlerThread()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 133
    return-void
.end method

.method private isAdminHasGeofence(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1242
    const/4 v1, 0x0

    .line 1245
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    .line 1246
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 1249
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1252
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1258
    if-eqz v1, :cond_0

    .line 1259
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1252
    :cond_0
    :goto_0
    return v3

    .line 1261
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1254
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1255
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "isAdminHasGeofence - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1258
    if-eqz v1, :cond_1

    .line 1259
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1264
    :cond_1
    :goto_1
    return v5

    .line 1261
    :catch_2
    move-exception v2

    goto :goto_1

    .line 1256
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1258
    if-eqz v1, :cond_2

    .line 1259
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1256
    :cond_2
    :goto_2
    throw v3

    .line 1261
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .locals 12
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 586
    const-string/jumbo v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 589
    .local v6, "token":J
    const/4 v0, 0x0

    .line 590
    .local v0, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 592
    .local v4, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 593
    .local v1, "criteria":Landroid/location/Criteria;
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 594
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 595
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 596
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 597
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 600
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    .line 601
    .local v4, "location":Landroid/location/Location;
    if-nez v4, :cond_0

    .line 602
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "provider":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string/jumbo v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 613
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "provider":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 614
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    .line 620
    .end local v0    # "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    return-object v0

    .line 604
    .restart local v0    # "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "location":Landroid/location/Location;
    .restart local v5    # "provider":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 607
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    const/4 v4, 0x0

    .local v4, "location":Landroid/location/Location;
    goto :goto_0

    .line 616
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "location":Landroid/location/Location;
    :cond_2
    invoke-direct {p0, v4, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    .line 617
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .local v0, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 1133
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1134
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 1135
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    .local v4, "user":Landroid/content/pm/UserInfo;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1139
    const-string/jumbo v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "adminUid"

    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1138
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1141
    .local v3, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1143
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "storedUid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1145
    .local v1, "storedUid":I
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1146
    const-string/jumbo v9, "GEOFENCINGSETTINGS"

    .line 1147
    const-string/jumbo v10, "state"

    .line 1145
    invoke-virtual {v8, v1, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1147
    const/4 v9, 0x1

    .line 1145
    if-ne v8, v9, :cond_1

    .line 1148
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1152
    .end local v1    # "storedUid":I
    .end local v2    # "storedUid$iterator":Ljava/util/Iterator;
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadGeofenceActiveList - EX"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "user$iterator":Ljava/util/Iterator;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v5    # "user$iterator":Ljava/util/Iterator;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    monitor-exit p0

    .line 1132
    return-void
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 821
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 829
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1564
    .local p1, "relevantGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v18, "GeofenceService"

    const-string/jumbo v19, "sendIntenttoAdmins"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 1566
    .local v17, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v16

    .line 1569
    .local v16, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 1570
    .local v14, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    .line 1575
    const-string/jumbo v19, "ADMIN"

    const-string/jumbo v20, "adminUid"

    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    .line 1574
    invoke-virtual/range {v18 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v13

    .line 1577
    .local v13, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "uid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1578
    .local v11, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 1580
    .local v9, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_3

    .line 1581
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v6, "intent":Landroid/content/Intent;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v5, v0, [I

    .line 1583
    .local v5, "id":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 1584
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v5, v4

    .line 1583
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1586
    :cond_2
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.ID"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1587
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1588
    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    .line 1589
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    .line 1591
    .local v8, "ownerUid":I
    const-string/jumbo v18, "GeofenceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .line 1593
    .local v10, "thePackageNameFortheUID":Ljava/lang/String;
    const-string/jumbo v18, "GeofenceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v6, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1596
    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    .line 1597
    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 1595
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1598
    new-instance v7, Landroid/content/Intent;

    .line 1599
    const-string/jumbo v18, "edm.intent.action.device.inside"

    .line 1598
    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v7, "oldIntent":Landroid/content/Intent;
    const-string/jumbo v18, "edm.intent.extra.geofence.id"

    .line 1600
    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1606
    const-string/jumbo v18, "edm.intent.extra.geofence.user.id"

    .line 1607
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 1604
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1608
    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1609
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1611
    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    .line 1612
    const-string/jumbo v20, "android.permission.sec.MDM_GEOFENCING"

    .line 1610
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1615
    .end local v4    # "i":I
    .end local v5    # "id":[I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "oldIntent":Landroid/content/Intent;
    .end local v8    # "ownerUid":I
    .end local v10    # "thePackageNameFortheUID":Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "GEOFENCINGSETTINGS"

    .line 1616
    const-string/jumbo v20, "state"

    .line 1615
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1616
    const/16 v19, 0x1

    .line 1615
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1617
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    .line 1620
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    .line 1622
    .restart local v8    # "ownerUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1624
    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    .line 1625
    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 1623
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1626
    new-instance v7, Landroid/content/Intent;

    .line 1627
    const-string/jumbo v18, "edm.intent.action.device.outside"

    .line 1626
    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1630
    .restart local v7    # "oldIntent":Landroid/content/Intent;
    const-string/jumbo v18, "edm.intent.extra.geofence.user.id"

    .line 1631
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 1628
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1633
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 1635
    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    .line 1636
    const-string/jumbo v20, "android.permission.sec.MDM_GEOFENCING"

    .line 1634
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1638
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "oldIntent":Landroid/content/Intent;
    .end local v8    # "ownerUid":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1562
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "uid":I
    .end local v12    # "uid$iterator":Ljava/util/Iterator;
    .end local v13    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1918
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1921
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1922
    .local v2, "out":Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1923
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 1927
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1928
    .end local v2    # "out":Ljava/io/ObjectOutput;
    :catch_0
    move-exception v1

    .line 1929
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1931
    const/4 v3, 0x0

    return-object v3
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    .line 160
    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .locals 14
    .param p1, "uid"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    monitor-enter p0

    .line 1160
    const/4 v2, 0x0

    .line 1163
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x3

    :try_start_0
    new-array v1, v10, [Ljava/lang/String;

    .line 1164
    const-string/jumbo v10, "_id"

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const-string/jumbo v10, "type"

    const/4 v11, 0x1

    aput-object v10, v1, v11

    .line 1165
    const-string/jumbo v10, "blobdata"

    const/4 v11, 0x2

    aput-object v10, v1, v11

    .line 1168
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "GEOFENCING"

    invoke-virtual {v10, v11, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1171
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    .line 1172
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1174
    const-string/jumbo v10, "_id"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1176
    .local v5, "id":I
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1179
    const-string/jumbo v10, "type"

    .line 1178
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1181
    .local v9, "type":I
    const-string/jumbo v10, "blobdata"

    .line 1180
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1183
    .local v3, "data":[B
    if-ne v9, v12, :cond_2

    .line 1184
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 1185
    .local v8, "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    iput v5, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 1186
    iput v9, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 1187
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1203
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v8    # "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    .end local v9    # "type":I
    :catch_0
    move-exception v4

    .line 1204
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "GeofenceService"

    const-string/jumbo v11, "updateGeofenceActiveList - EX"

    invoke-static {v10, v11, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    if-eqz v2, :cond_1

    .line 1208
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit p0

    .line 1159
    return-void

    .line 1188
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v9    # "type":I
    :cond_2
    if-ne v9, v13, :cond_4

    .line 1189
    :try_start_3
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 1190
    .local v7, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    iput v5, v7, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 1191
    iput v9, v7, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 1192
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1205
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v7    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    .line 1207
    if-eqz v2, :cond_3

    .line 1208
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1205
    :cond_3
    :goto_2
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1194
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v9    # "type":I
    :cond_4
    :try_start_6
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 1195
    .local v0, "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    iput v5, v0, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 1196
    iput v9, v0, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 1197
    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1207
    .end local v0    # "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v9    # "type":I
    :cond_5
    if-eqz v2, :cond_1

    .line 1208
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1209
    :catch_1
    move-exception v6

    .local v6, "ignore":Ljava/lang/Exception;
    goto :goto_1

    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "ignore":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .restart local v6    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "ignore":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .restart local v6    # "ignore":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z
    .locals 6
    .param p1, "center"    # Lcom/samsung/android/knox/location/LatLongPoint;
    .param p2, "radius"    # D

    .prologue
    .line 1946
    const/4 v0, 0x1

    .line 1947
    .local v0, "valid":Z
    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_1

    .line 1948
    const/4 v0, 0x0

    .line 1955
    :cond_0
    :goto_0
    return v0

    .line 1950
    :cond_1
    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_2

    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 1952
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1950
    :cond_3
    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_2

    .line 1951
    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    goto :goto_1
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1876
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const/4 v2, 0x1

    .line 1877
    .local v2, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1878
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1879
    .local v1, "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 1882
    :cond_0
    const/4 v2, 0x0

    .line 1883
    return v2

    .line 1880
    :cond_1
    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 1877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1886
    .end local v1    # "latlongPoint":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_2
    return v2
.end method

.method private writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I
    .param p3, "serializedBlob"    # [B

    .prologue
    .line 1897
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1898
    .local v0, "callingUid":I
    if-nez p3, :cond_0

    .line 1899
    const/4 v3, -0x1

    return v3

    .line 1900
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1901
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1903
    const-string/jumbo v3, "blobdata"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1904
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1906
    .local v1, "id":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 1907
    return v1
.end method


# virtual methods
.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "circularGeofence"    # Lcom/samsung/android/knox/location/CircularGeofence;

    .prologue
    const/4 v8, 0x1

    .line 402
    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "createGeofence"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 404
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 406
    .local v0, "callingUid":I
    const/4 v1, -0x1

    .line 407
    .local v1, "id":I
    iget-object v4, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v3

    .line 410
    .local v3, "serializedBlob":[B
    if-nez v3, :cond_0

    .line 411
    return v1

    .line 413
    :cond_0
    invoke-direct {p0, p1, v8, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 416
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "serializedBlob":[B
    :cond_1
    return v1
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "geofence"    # Lcom/samsung/android/knox/location/Geofence;

    .prologue
    .line 338
    const/4 v0, -0x1

    .line 340
    .local v0, "id":I
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 341
    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    .end local p2    # "geofence":Lcom/samsung/android/knox/location/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I

    move-result v0

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 344
    .restart local p2    # "geofence":Lcom/samsung/android/knox/location/Geofence;
    :cond_1
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 345
    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .end local p2    # "geofence":Lcom/samsung/android/knox/location/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I

    move-result v0

    goto :goto_0

    .line 348
    .restart local p2    # "geofence":Lcom/samsung/android/knox/location/Geofence;
    :cond_2
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 349
    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    .end local p2    # "geofence":Lcom/samsung/android/knox/location/Geofence;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I

    move-result v0

    goto :goto_0
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "linearGeofence"    # Lcom/samsung/android/knox/location/LinearGeofence;

    .prologue
    .line 360
    const-string/jumbo v12, "GeofenceService"

    const-string/jumbo v13, "createGeofence"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 362
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 363
    .local v8, "callingUid":I
    const/4 v9, -0x1

    .line 364
    .local v9, "id":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 365
    .local v6, "toleranceVal":D
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v3, "polygonList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    .line 367
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    .line 371
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v3

    .line 373
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_5

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 375
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 376
    .local v4, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_3

    .line 377
    :cond_1
    const/4 v12, -0x1

    return v12

    .line 368
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_2
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide v14, 0x412e848000000000L    # 1000000.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 369
    const-wide v12, 0x412e847e00000000L    # 999999.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_0

    .line 378
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v5

    .line 379
    .local v5, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    new-instance v2, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    .line 381
    .local v2, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v11

    .line 382
    .local v11, "serializedBlob":[B
    const/4 v12, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v9

    .line 383
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 385
    .local v10, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    .end local v2    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v5    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    .end local v10    # "message":Landroid/os/Message;
    .end local v11    # "serializedBlob":[B
    :cond_4
    return v9

    .line 390
    :cond_5
    return v9
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "polygonalGeofence"    # Lcom/samsung/android/knox/location/PolygonalGeofence;

    .prologue
    .line 430
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "createGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 432
    move-object/from16 v0, p1

    iget v9, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 435
    .local v9, "callingUid":I
    const/4 v10, -0x1

    .line 436
    .local v10, "id":I
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 437
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 439
    .local v6, "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 440
    :cond_0
    const/4 v3, -0x1

    return v3

    .line 441
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v8

    .line 442
    .local v8, "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    const-wide/16 v14, 0x0

    cmpl-double v3, v4, v14

    if-nez v3, :cond_3

    .line 443
    move-object v7, v6

    .line 449
    .local v7, "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    :goto_0
    new-instance v2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    .line 450
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    .line 449
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    .line 451
    .local v2, "pGeofence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v12

    .line 452
    .local v12, "serializedBlob":[B
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v10

    .line 454
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 456
    .local v11, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    .end local v2    # "pGeofence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    .end local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v7    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .end local v8    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "serializedBlob":[B
    :cond_2
    return v10

    .line 445
    .restart local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    .restart local v8    # "boundingBox":Lcom/samsung/android/knox/location/BoundingBox;
    :cond_3
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    .restart local v7    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    goto :goto_0
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .locals 56
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v13, "frontList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v12, "endList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v38, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v23, "listAbove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .local v24, "listBelow":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/LatLongPoint;>;"
    const-wide/16 v36, 0x0

    .local v36, "slopePerpendicularAB":D
    const-wide/16 v8, 0x0

    .line 964
    .local v8, "distanceToPoint":D
    const/16 v39, 0x0

    .local v39, "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v10, 0x0

    .local v10, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    const/4 v11, 0x0

    .line 969
    .local v11, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide v50, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v50

    .line 971
    const/16 v22, 0x0

    .end local v10    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v11    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v39    # "temp":Lcom/samsung/android/knox/location/LatLongPoint;
    .local v22, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    move/from16 v0, v22

    move/from16 v1, v49

    if-ge v0, v1, :cond_14

    .line 972
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_7

    .line 973
    add-int/lit8 v49, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 974
    .local v6, "a":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 980
    .local v7, "b":Lcom/samsung/android/knox/location/LatLongPoint;
    :goto_1
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    sub-double v50, v50, v52

    const-wide/16 v52, 0x0

    cmpl-double v49, v50, v52

    if-nez v49, :cond_0

    .line 981
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmpl-double v49, v50, v52

    if-ltz v49, :cond_8

    .line 982
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v50, v0

    .line 958
    const-wide v52, 0x3f747ae147ae147bL    # 0.005

    .line 982
    sub-double v50, v50, v52

    move-wide/from16 v0, v50

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    .line 987
    :cond_0
    :goto_2
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v50, v50, v52

    const-wide/16 v52, 0x0

    cmpl-double v49, v50, v52

    if-nez v49, :cond_1

    .line 988
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmpl-double v49, v50, v52

    if-ltz v49, :cond_9

    .line 989
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    .line 960
    const-wide v52, 0x3f747ae147ae147bL    # 0.005

    .line 989
    sub-double v50, v50, v52

    move-wide/from16 v0, v50

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    .line 994
    :cond_1
    :goto_3
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v50, v50, v52

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    div-double v34, v50, v52

    .line 996
    .local v34, "slopeAB":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v49

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v25, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    add-double v50, v50, v52

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    div-double v50, v50, v52

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    move-wide/from16 v3, v52

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .line 1004
    .local v25, "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    div-double v50, v50, v34

    move-wide/from16 v0, v50

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 1007
    mul-double v50, v36, v36

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v50

    .line 1006
    div-double v8, p2, v50

    .line 1010
    const-wide/16 v50, 0x0

    cmpl-double v49, v34, v50

    if-lez v49, :cond_a

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    cmpg-double v49, v50, v52

    if-gez v49, :cond_a

    .line 1012
    :cond_2
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    add-double v44, v50, v52

    .line 1013
    .local v44, "yNewAbove":D
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v44, v50

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v40, v50, v36

    .line 1015
    .local v40, "xNewAbove":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v40

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    sub-double v46, v50, v52

    .line 1019
    .local v46, "yNewBelow":D
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v46, v50

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v42, v50, v36

    .line 1021
    .local v42, "xNewBelow":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v42

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    if-nez v22, :cond_3

    .line 1024
    move-object/from16 v39, v6

    .line 1025
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_4

    .line 1026
    move-object/from16 v39, v7

    .line 1028
    :cond_4
    if-eqz v22, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_6

    .line 1029
    :cond_5
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    add-double v44, v50, v52

    .line 1030
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v44, v50

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v40, v50, v36

    .line 1032
    if-nez v22, :cond_f

    .line 1033
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v40

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    :goto_4
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    sub-double v46, v50, v52

    .line 1039
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v46, v50

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v42, v50, v36

    .line 1041
    if-nez v22, :cond_10

    .line 1042
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v42

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v40    # "xNewAbove":D
    .end local v42    # "xNewBelow":D
    .end local v44    # "yNewAbove":D
    .end local v46    # "yNewBelow":D
    :cond_6
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 976
    .end local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v25    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v34    # "slopeAB":D
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 977
    .restart local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v49, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    .restart local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_1

    .line 984
    :cond_8
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v50, v0

    .line 958
    const-wide v52, 0x3f747ae147ae147bL    # 0.005

    .line 984
    add-double v50, v50, v52

    move-wide/from16 v0, v50

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto/16 :goto_2

    .line 991
    :cond_9
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    .line 960
    const-wide v52, 0x3f747ae147ae147bL    # 0.005

    .line 991
    add-double v50, v50, v52

    move-wide/from16 v0, v50

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto/16 :goto_3

    .line 1011
    .restart local v25    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .restart local v34    # "slopeAB":D
    :cond_a
    const-wide/16 v50, 0x0

    cmpg-double v49, v34, v50

    if-gez v49, :cond_b

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    cmpl-double v49, v50, v52

    if-gtz v49, :cond_2

    .line 1051
    :cond_b
    const-wide/16 v50, 0x0

    cmpl-double v49, v34, v50

    if-lez v49, :cond_11

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    cmpl-double v49, v50, v52

    if-lez v49, :cond_11

    .line 1053
    :goto_6
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    sub-double v44, v50, v52

    .line 1054
    .restart local v44    # "yNewAbove":D
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v44, v50

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v40, v50, v36

    .line 1056
    .restart local v40    # "xNewAbove":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v40

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    add-double v46, v50, v52

    .line 1060
    .restart local v46    # "yNewBelow":D
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v46, v50

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v42, v50, v36

    .line 1062
    .restart local v42    # "xNewBelow":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v42

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    if-nez v22, :cond_c

    .line 1065
    move-object/from16 v39, v6

    .line 1066
    :cond_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_d

    .line 1067
    move-object/from16 v39, v7

    .line 1069
    :cond_d
    if-eqz v22, :cond_e

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_6

    .line 1070
    :cond_e
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    sub-double v44, v50, v52

    .line 1071
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v44, v50

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v40, v50, v36

    .line 1073
    if-nez v22, :cond_12

    .line 1074
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v40

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    :goto_7
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    mul-double v52, v36, v8

    add-double v46, v50, v52

    .line 1080
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    sub-double v50, v46, v50

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v36

    add-double v50, v50, v52

    div-double v42, v50, v36

    .line 1082
    if-nez v22, :cond_13

    .line 1083
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v42

    move-wide/from16 v3, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1035
    :cond_f
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v40

    move-wide/from16 v2, v44

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .local v10, "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_4

    .line 1044
    .end local v10    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_10
    new-instance v11, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v42

    move-wide/from16 v2, v46

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .local v11, "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_5

    .line 1052
    .end local v11    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v40    # "xNewAbove":D
    .end local v42    # "xNewBelow":D
    .end local v44    # "yNewAbove":D
    .end local v46    # "yNewBelow":D
    :cond_11
    const-wide/16 v50, 0x0

    cmpg-double v49, v34, v50

    if-gez v49, :cond_6

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    cmpg-double v49, v50, v52

    if-gez v49, :cond_6

    goto/16 :goto_6

    .line 1076
    .restart local v40    # "xNewAbove":D
    .restart local v42    # "xNewBelow":D
    .restart local v44    # "yNewAbove":D
    .restart local v46    # "yNewBelow":D
    :cond_12
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v40

    move-wide/from16 v2, v44

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    goto :goto_7

    .line 1085
    .end local v10    # "end1":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_13
    new-instance v11, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v42

    move-wide/from16 v2, v46

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    .restart local v11    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    goto/16 :goto_5

    .line 1096
    .end local v6    # "a":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v7    # "b":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v11    # "end2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v25    # "mid1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v34    # "slopeAB":D
    .end local v40    # "xNewAbove":D
    .end local v42    # "xNewBelow":D
    .end local v44    # "yNewAbove":D
    .end local v46    # "yNewBelow":D
    :cond_14
    const/16 v48, 0x0

    .line 1097
    .local v48, "z":I
    const/16 v22, 0x0

    :goto_8
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v49, v49, -0x2

    move/from16 v0, v22

    move/from16 v1, v49

    if-ge v0, v1, :cond_15

    .line 1100
    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Double;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    .line 1101
    .local v26, "m1":D
    add-int/lit8 v49, v22, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Double;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .line 1102
    .local v28, "m2":D
    move-object/from16 v0, v23

    move/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1103
    .local v30, "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v49, v48, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1104
    .local v31, "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v28

    sub-double v50, v50, v52

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v26

    sub-double v52, v52, v54

    sub-double v50, v50, v52

    .line 1105
    sub-double v52, v26, v28

    .line 1104
    div-double v14, v50, v52

    .line 1106
    .local v14, "finx":D
    mul-double v50, v26, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v26

    sub-double v52, v52, v54

    add-double v18, v50, v52

    .line 1107
    .local v18, "finy":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    move-object/from16 v0, v24

    move/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1110
    .local v32, "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    add-int/lit8 v49, v48, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/knox/location/LatLongPoint;

    .line 1111
    .local v33, "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v50, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    mul-double v52, v52, v28

    sub-double v50, v50, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v26

    sub-double v52, v52, v54

    sub-double v50, v50, v52

    .line 1112
    sub-double v52, v26, v28

    .line 1111
    div-double v16, v50, v52

    .line 1113
    .local v16, "finxbelow":D
    mul-double v50, v26, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v26

    sub-double v52, v52, v54

    add-double v20, v50, v52

    .line 1114
    .local v20, "finybelow":D
    new-instance v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v49

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 v48, v48, 0x1

    .line 1097
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 1119
    .end local v14    # "finx":D
    .end local v16    # "finxbelow":D
    .end local v18    # "finy":D
    .end local v20    # "finybelow":D
    .end local v26    # "m1":D
    .end local v28    # "m2":D
    .end local v30    # "p1":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v31    # "p2":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v32    # "p3":Lcom/samsung/android/knox/location/LatLongPoint;
    .end local v33    # "p4":Lcom/samsung/android/knox/location/LatLongPoint;
    :cond_15
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v49

    add-int/lit8 v22, v49, -0x1

    :goto_9
    if-ltz v22, :cond_16

    .line 1122
    move/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v49

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    add-int/lit8 v22, v22, -0x1

    goto :goto_9

    .line 1124
    :cond_16
    return-object v13
.end method

.method public declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # I

    .prologue
    monitor-enter p0

    .line 471
    :try_start_0
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 473
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 474
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    .line 475
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    :cond_0
    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 484
    return v2

    .line 476
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    .line 477
    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    .line 476
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 478
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 479
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "callingUid":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)D
    .locals 18
    .param p1, "point1"    # Lcom/samsung/android/knox/location/LatLongPoint;
    .param p2, "point2"    # Lcom/samsung/android/knox/location/LatLongPoint;

    .prologue
    .line 1522
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1523
    .local v6, "lat2":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1524
    .local v10, "lon2":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 1525
    .local v4, "lat1":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1527
    .local v8, "lon1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 1528
    sub-double v16, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 1527
    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    .line 1520
    const-wide v14, 0x40aeed880a82edb3L    # 3958.765705195919

    .line 1527
    mul-double v2, v12, v14

    .line 1531
    .local v2, "distance":D
    return-wide v2
.end method

.method public getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    const-string/jumbo v12, "GeofenceService"

    const-string/jumbo v13, "getGeofences"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 634
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 635
    .local v1, "callingUid":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/Geofence;>;"
    const/4 v3, 0x0

    .line 639
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x3

    :try_start_0
    new-array v2, v12, [Ljava/lang/String;

    .line 640
    const-string/jumbo v12, "_id"

    const/4 v13, 0x0

    aput-object v12, v2, v13

    const-string/jumbo v12, "type"

    const/4 v13, 0x1

    aput-object v12, v2, v13

    .line 641
    const-string/jumbo v12, "blobdata"

    const/4 v13, 0x2

    aput-object v12, v2, v13

    .line 644
    .local v2, "columns":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "GEOFENCING"

    invoke-virtual {v12, v13, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 647
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 648
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 650
    const-string/jumbo v12, "_id"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 651
    .local v6, "id":I
    const-string/jumbo v12, "type"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 653
    .local v11, "type":I
    const-string/jumbo v12, "blobdata"

    .line 652
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 655
    .local v4, "data":[B
    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 656
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/PolygonalGeofence;

    .line 657
    .local v9, "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    iput v6, v9, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    .line 658
    iput v11, v9, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    .line 659
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 674
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v9    # "pFence":Lcom/samsung/android/knox/location/PolygonalGeofence;
    .end local v11    # "type":I
    :catch_0
    move-exception v5

    .line 675
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v12, "GeofenceService"

    const-string/jumbo v13, "getGeofences - EX"

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    if-eqz v3, :cond_0

    .line 679
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 683
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x0

    .end local v10    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/Geofence;>;"
    :cond_1
    return-object v10

    .line 660
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "data":[B
    .restart local v6    # "id":I
    .restart local v10    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/location/Geofence;>;"
    .restart local v11    # "type":I
    :cond_2
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 661
    :try_start_3
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LinearGeofence;

    .line 662
    .local v8, "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    iput v6, v8, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    .line 663
    iput v11, v8, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    .line 664
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v8, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    .line 665
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 676
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v8    # "lFence":Lcom/samsung/android/knox/location/LinearGeofence;
    .end local v11    # "type":I
    :catchall_0
    move-exception v12

    .line 678
    if-eqz v3, :cond_3

    .line 679
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 676
    :cond_3
    :goto_2
    throw v12

    .line 667
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "data":[B
    .restart local v6    # "id":I
    .restart local v11    # "type":I
    :cond_4
    :try_start_5
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/CircularGeofence;

    .line 668
    .local v0, "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    iput v6, v0, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    .line 669
    iput v11, v0, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    .line 670
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "cFence":Lcom/samsung/android/knox/location/CircularGeofence;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v11    # "type":I
    :cond_5
    if-eqz v3, :cond_0

    .line 679
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 680
    :catch_1
    move-exception v7

    .local v7, "ignore":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v7    # "ignore":Ljava/lang/Exception;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .restart local v7    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "ignore":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .restart local v7    # "ignore":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 782
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 783
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 784
    const-string/jumbo v2, "GEOFENCINGSETTINGS"

    .line 785
    const-string/jumbo v3, "distance"

    .line 783
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 717
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 718
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 719
    const-string/jumbo v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    .line 718
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 582
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 567
    const-string/jumbo v5, "GEOFENCINGSETTINGS"

    .line 568
    const-string/jumbo v6, "state"

    .line 566
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 568
    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    return v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1998
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 284
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method

.method public setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "distance"    # F

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 760
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 761
    .local v0, "callingUid":I
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    .line 762
    const/4 v3, 0x0

    return v3

    .line 764
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 765
    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    .line 766
    const-string/jumbo v5, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    .line 764
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 768
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 770
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return v2
.end method

.method public setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 694
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 696
    .local v0, "callingUid":I
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gez v3, :cond_0

    .line 697
    const/4 v3, 0x0

    return v3

    .line 699
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 700
    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "time"

    .line 701
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 703
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 705
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return v2
.end method

.method public startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v7, 0x1

    .line 494
    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "startGeofencing"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 496
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 498
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    const/4 v4, 0x0

    return v4

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 504
    .local v1, "geofencingEnabled":Z
    monitor-enter p0

    .line 505
    if-eqz v1, :cond_1

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit p0

    .line 506
    return v7

    :cond_1
    monitor-exit p0

    .line 510
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 511
    const-string/jumbo v5, "GEOFENCINGSETTINGS"

    .line 512
    const-string/jumbo v6, "state"

    .line 510
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 514
    .local v3, "ret":Z
    if-eqz v3, :cond_2

    .line 515
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 517
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    return v3

    .line 504
    .end local v3    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 531
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 533
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 535
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 536
    return v6

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    const/4 v3, 0x1

    return v3

    .line 543
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 544
    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    .line 545
    const-string/jumbo v5, "state"

    .line 543
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 547
    .local v2, "ret":Z
    if-eqz v2, :cond_2

    .line 548
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 550
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    return v2
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "count":I
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 262
    .local v2, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 263
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 254
    return-void
.end method
