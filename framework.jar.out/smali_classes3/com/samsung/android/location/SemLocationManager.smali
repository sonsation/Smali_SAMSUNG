.class public Lcom/samsung/android/location/SemLocationManager;
.super Ljava/lang/Object;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;,
        Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.android.location.SERVICE_READY"

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_EVENT:I = 0x4

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_ALWAYS_SCAN:Ljava/lang/String; = "permissionalwaysscan"

.field private static final TAG:Ljava/lang/String; = "SemLocationManager"


# instance fields
.field private mCurrentLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/location/SCurrentLocListener;",
            "Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/location/SemLocationListener;",
            "Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/android/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/location/ISLocationManager;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/location/ISLocationManager;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    .line 374
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    .line 373
    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z
    .locals 14
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 613
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getType()I

    move-result v6

    .line 614
    .local v6, "type":I
    if-eq v6, v11, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 615
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "geofenceType is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v10

    .line 618
    :cond_0
    if-ne v6, v11, :cond_5

    .line 619
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLatitude()D

    move-result-wide v2

    .line 620
    .local v2, "latitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLongitude()D

    move-result-wide v4

    .line 621
    .local v4, "longitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getRadius()I

    move-result v1

    .line 622
    .local v1, "radius":I
    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, v2, v8

    if-ltz v7, :cond_1

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v7, v2, v8

    if-lez v7, :cond_2

    .line 623
    :cond_1
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "latitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v10

    .line 626
    :cond_2
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v7, v4, v8

    if-ltz v7, :cond_3

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v7, v4, v8

    if-lez v7, :cond_4

    .line 627
    :cond_3
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "longitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v10

    .line 630
    :cond_4
    const/16 v7, 0x64

    if-ge v1, v7, :cond_5

    .line 631
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "radius is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v10

    .line 635
    .end local v1    # "radius":I
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_5
    if-eq v6, v12, :cond_6

    if-ne v6, v13, :cond_7

    .line 636
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 638
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "bssid is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v10

    .line 642
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_7
    return v11
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/android/location/SemGeofence;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 478
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, -0x1

    return v1

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const/4 v1, -0x2

    return v1

    .line 485
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, -0x4

    return v1
.end method

.method public addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 506
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, -0x1

    return v1

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    const/4 v1, -0x2

    return v1

    .line 513
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, -0x4

    return v1
.end method

.method public checkPassiveLocation()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1000
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 1001
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return v4

    .line 1005
    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "checkPassiveLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPassiveLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v4
.end method

.method public getGeofenceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 445
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v4, :cond_0

    .line 446
    const-string/jumbo v4, "SemLocationManager"

    const-string/jumbo v5, "SLocationService is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v7

    .line 449
    :cond_0
    const/4 v3, 0x0

    .line 450
    .local v3, "list":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/location/ISLocationManager;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v3

    .line 453
    .local v3, "list":[I
    if-eqz v3, :cond_1

    .line 454
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 455
    aget v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_1
    return-object v2

    .line 459
    .end local v3    # "list":[I
    :catch_0
    move-exception v0

    .line 460
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SemLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGeofenceIdList: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-object v7
.end method

.method public removeCurrentLocation(ILcom/samsung/android/location/SCurrentLocListener;)I
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SCurrentLocListener;

    .prologue
    const/4 v6, -0x4

    .line 970
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 971
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v2, -0x1

    return v2

    .line 974
    :cond_0
    if-nez p2, :cond_1

    .line 975
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v2, -0x2

    return v2

    .line 979
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .line 981
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 982
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "already removeCurrentLocation"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 983
    return v6

    .line 985
    :cond_2
    :try_start_3
    const-string/jumbo v2, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCurrentLocation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->removeCurrentLocation(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    :try_start_4
    monitor-exit v3

    return v2

    .line 979
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return v6
.end method

.method public removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 528
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 529
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, -0x1

    return v1

    .line 533
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, -0x4

    return v1
.end method

.method public removeGeofence(ILjava/lang/String;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 550
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, -0x1

    return v1

    .line 554
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, -0x4

    return v1
.end method

.method public removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 886
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 887
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v2, -0x1

    return v2

    .line 890
    :cond_0
    if-nez p1, :cond_1

    .line 891
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v2, -0x2

    return v2

    .line 896
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 897
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 898
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v2, -0x3

    return v2

    .line 902
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 904
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v2, -0x4

    return v2
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 831
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 832
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v1, -0x1

    return v1

    .line 835
    :cond_0
    if-nez p1, :cond_1

    .line 836
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v1, -0x2

    return v1

    .line 840
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v1, -0x4

    return v1
.end method

.method public requestAddressFromLocation([D[DLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "latitude"    # [D
    .param p2, "longitude"    # [D
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 919
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 920
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v1, -0x1

    return v1

    .line 923
    :cond_0
    if-nez p3, :cond_1

    .line 924
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v1, -0x2

    return v1

    .line 928
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v1, -0x4

    return v1
.end method

.method public requestBatchOfLocations()I
    .locals 4

    .prologue
    .line 757
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 758
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v1, -0x1

    return v1

    .line 762
    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, -0x4

    return v1
.end method

.method public requestCurrentLocation(Lcom/samsung/android/location/SCurrentLocListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/location/SCurrentLocListener;

    .prologue
    .line 940
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 941
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v2, -0x1

    return v2

    .line 944
    :cond_0
    if-nez p1, :cond_1

    .line 945
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v2, -0x2

    return v2

    .line 949
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .line 951
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 952
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SCurrentLocListener;)V

    .line 954
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 949
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v2, -0x4

    return v2
.end method

.method public requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "isAddress"    # Z
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 855
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 856
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, -0x1

    return v2

    .line 859
    :cond_0
    if-nez p2, :cond_1

    .line 860
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v2, -0x2

    return v2

    .line 864
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 866
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 867
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    .line 869
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 864
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v2, -0x4

    return v2
.end method

.method public requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 809
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 810
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v1, -0x1

    return v1

    .line 813
    :cond_0
    if-nez p4, :cond_1

    .line 814
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v1, -0x2

    return v1

    .line 818
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v1, -0x4

    return v1
.end method

.method public startGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 570
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 571
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v1, -0x1

    return v1

    .line 574
    :cond_0
    if-nez p2, :cond_1

    .line 575
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v1, -0x2

    return v1

    .line 580
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofenceMonitoring : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v1, -0x4

    return v1
.end method

.method public startLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 653
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 654
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, -0x1

    return v1

    .line 658
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->startLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v1, -0x4

    return v1
.end method

.method public startLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 695
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 696
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v2, -0x1

    return v2

    .line 699
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 700
    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v2, -0x2

    return v2

    .line 704
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 706
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 707
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    .line 709
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 704
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, -0x4

    return v2
.end method

.method public stopGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 596
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 597
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v1, -0x1

    return v1

    .line 600
    :cond_0
    if-nez p2, :cond_1

    .line 601
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, -0x2

    return v1

    .line 605
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofenceMonitoring: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v1, -0x4

    return v1
.end method

.method public stopLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 673
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 674
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v1, -0x1

    return v1

    .line 678
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v1, -0x4

    return v1
.end method

.method public stopLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 727
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 728
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v2, -0x1

    return v2

    .line 731
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 732
    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v2, -0x2

    return v2

    .line 736
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 737
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 738
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v2, -0x3

    return v2

    .line 742
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 745
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 746
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v2, -0x4

    return v2
.end method

.method public syncGeofence(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "geofenceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 388
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v3, -0x1

    return v3

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 392
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, -0x2

    return v3

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 396
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/location/ISLocationManager;->syncGeofence([ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v3, -0x4

    return v3
.end method

.method public syncGeofence(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "geofenceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 419
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v3, -0x1

    return v3

    .line 422
    :cond_0
    if-nez p1, :cond_1

    .line 423
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v3, -0x2

    return v3

    .line 426
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 427
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 428
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v3, v2, p2}, Lcom/samsung/android/location/ISLocationManager;->syncGeofence([ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v3, -0x4

    return v3
.end method

.method public updateBatchingOptions(II)I
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "period"    # I

    .prologue
    .line 778
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 779
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v1, -0x1

    return v1

    .line 782
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 783
    :cond_1
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, -0x2

    return v1

    .line 787
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v1, -0x4

    return v1
.end method
