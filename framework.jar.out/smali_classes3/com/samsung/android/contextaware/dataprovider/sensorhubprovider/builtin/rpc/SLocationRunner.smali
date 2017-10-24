.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLocationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    }
.end annotation


# instance fields
.field private isARStarted:Z

.field private mGeofenceUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mGeofences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mPauseResume:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 89
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 91
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    .line 108
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    .line 105
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 693
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 694
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 692
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 682
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 683
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 681
    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public final enable()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 630
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 631
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 635
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 636
    .local v4, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 637
    const/16 v7, 0x67

    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setProperty(ILjava/lang/Object;)Z

    .line 641
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 642
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 644
    .local v3, "geofences":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "geofence$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 645
    .local v0, "geofence":[I
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 646
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v7

    invoke-virtual {v4, v7, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 647
    const/16 v7, 0x65

    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setProperty(ILjava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v0    # "geofence":[I
    .end local v1    # "geofence$iterator":Ljava/util/Iterator;
    .end local v3    # "geofences":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 654
    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 656
    .local v2, "geofenceUpdates":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "update$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 657
    .local v5, "update":[I
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 658
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v7

    invoke-virtual {v4, v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 659
    const/16 v7, 0x68

    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setProperty(ILjava/lang/Object;)Z

    goto :goto_1

    .line 665
    .end local v2    # "geofenceUpdates":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    .end local v5    # "update":[I
    .end local v6    # "update$iterator":Ljava/util/Iterator;
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    if-eqz v7, :cond_2

    .line 666
    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-direct {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 667
    .restart local v4    # "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v7

    filled-new-array {v9, v9}, [I

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 668
    const/16 v7, 0x6a

    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setProperty(ILjava/lang/Object;)Z

    .line 629
    :cond_2
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 570
    const-string/jumbo v1, "GeoFenceId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 571
    const-string/jumbo v1, "GeoFenceStatus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 572
    const-string/jumbo v1, "Latitude"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 573
    const-string/jumbo v1, "Longitude"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 574
    const-string/jumbo v1, "TotalGpsCount"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 575
    const-string/jumbo v1, "SuccessGpsCount"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 576
    const-string/jumbo v1, "Distance"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 577
    const-string/jumbo v1, "Timestamp"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 578
    const-string/jumbo v1, "Accuracy"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 579
    const-string/jumbo v1, "FunctionType"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 580
    const-string/jumbo v1, "ErrorCode"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 581
    const-string/jumbo v1, "EventTypeArray"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 582
    const-string/jumbo v1, "EventStatusArray"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 583
    const-string/jumbo v1, "DataArray"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 584
    const-string/jumbo v1, "TimeStampArray"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 585
    const-string/jumbo v1, "DataCount"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 586
    const-string/jumbo v1, "LatitudeArray"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 587
    const-string/jumbo v1, "LongitudeArray"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 588
    const-string/jumbo v1, "AltitudeArray"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 589
    const-string/jumbo v1, "SpeedArray"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 590
    const-string/jumbo v1, "BearingArray"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 591
    const-string/jumbo v1, "AccuracyArray"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 592
    const-string/jumbo v1, "Version"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 593
    const-string/jumbo v1, "DataSequence"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 594
    const-string/jumbo v1, "TotalSequence"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 569
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 718
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x37

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v15, "outerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v8, "coreDetectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v13, "gpsCountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v6, "ARList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v9, "coreDistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v10, "coreErrorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v12, "dumpStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v7, "batchedLocationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v11, "coreVersion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, "names":[Ljava/lang/String;
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Version:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x4

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x5

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x6

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v16, "repeatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/16 v19, 0x7

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalSequence:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v17, "repeatLocationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LatitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->LongitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v20

    aget-object v20, v14, v20

    const-wide v22, 0x416312d000000000L    # 1.0E7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AltitudeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SpeedArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->BearingArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->AccuracyArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v19, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sget-object v22, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v22

    aget-object v22, v14, v22

    invoke-direct/range {v18 .. v22}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    return-object v15
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 606
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 618
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 705
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 22
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v16, 0x1

    .line 148
    .local v16, "result":Z
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 149
    const-string/jumbo v18, "Version"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 154
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    .line 151
    const/16 v19, 0x17

    .line 152
    const/16 v20, 0x37

    .line 153
    const/16 v21, 0x11

    .line 150
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 455
    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    :goto_0
    return v16

    .line 155
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v18, 0x65

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 156
    const-string/jumbo v18, "Add"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 159
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 162
    .local v7, "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 163
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 164
    const/16 v16, 0x0

    goto :goto_0

    .line 166
    :cond_1
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 167
    .local v11, "geofence":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 168
    aget v18, v7, v12

    aput v18, v11, v12

    .line 167
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 170
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 173
    .local v6, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 174
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 175
    .local v5, "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 178
    .local v14, "packet":[B
    const/16 v18, 0x17

    .line 179
    const/16 v19, 0x37

    .line 180
    const/16 v20, 0x1

    .line 177
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 184
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v11    # "geofence":[I
    .end local v12    # "i":I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/16 v18, 0x66

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 185
    const-string/jumbo v18, "Remove"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 189
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 192
    .local v10, "geoFenceId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v10, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    .line 196
    const/16 v19, 0x17

    .line 197
    const/16 v20, 0x37

    .line 198
    const/16 v21, 0x2

    .line 195
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 201
    .end local v10    # "geoFenceId":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    const/16 v18, 0x67

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 202
    const-string/jumbo v18, "PauseResume"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 206
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 209
    .local v15, "pauseResume":I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 215
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    .line 212
    const/16 v19, 0x17

    .line 213
    const/16 v20, 0x37

    .line 214
    const/16 v21, 0x3

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 217
    .end local v15    # "pauseResume":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/16 v18, 0x68

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 218
    const-string/jumbo v18, "Update"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 221
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 224
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 225
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 228
    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 229
    .local v17, "update":[I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 230
    aget v18, v7, v12

    aput v18, v17, v12

    .line 229
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 232
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v13, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    :try_start_0
    aget v18, v7, v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 238
    const/16 v18, 0x1

    aget v18, v7, v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 239
    const/16 v18, 0x2

    aget v18, v7, v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_3
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 246
    const/16 v19, 0x17

    .line 247
    const/16 v20, 0x37

    .line 248
    const/16 v21, 0x4

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 240
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v18, "error converting"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 252
    .end local v7    # "data":[I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "i":I
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "update":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_8
    const/16 v18, 0x69

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 253
    const-string/jumbo v18, "Set Loc"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 256
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 259
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 260
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 261
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 264
    :cond_9
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 265
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 270
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    .line 267
    const/16 v19, 0x17

    .line 268
    const/16 v20, 0x37

    .line 269
    const/16 v21, 0x5

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 273
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_a
    const/16 v18, 0x6a

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 274
    const-string/jumbo v18, "Start AR"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 277
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 280
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 281
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 282
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 284
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 286
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    .restart local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    :try_start_1
    aget v18, v7, v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .line 290
    const/16 v18, 0x1

    aget v18, v7, v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :goto_4
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 297
    const/16 v19, 0x17

    .line 298
    const/16 v20, 0x37

    .line 299
    const/16 v21, 0x6

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 291
    :catch_1
    move-exception v8

    .line 292
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "error converting"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 303
    .end local v7    # "data":[I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_c
    const/16 v18, 0x6b

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 304
    const-string/jumbo v18, "Stop AR"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 306
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 312
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    .line 309
    const/16 v19, 0x17

    .line 310
    const/16 v20, 0x37

    .line 311
    const/16 v21, 0x7

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 314
    :cond_d
    const/16 v18, 0x6c

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 315
    const-string/jumbo v18, "CurLoc func"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 319
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 325
    .local v9, "func":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v18

    .line 322
    const/16 v19, 0x17

    .line 323
    const/16 v20, 0x37

    .line 324
    const/16 v21, 0x8

    .line 321
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 327
    .end local v9    # "func":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_e
    const/16 v18, 0x6e

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 328
    const-string/jumbo v18, "Start core FIFO Batch"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 330
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 332
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 333
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 334
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 336
    :cond_f
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 337
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 338
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 339
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 342
    .restart local v14    # "packet":[B
    const/16 v18, 0x17

    .line 343
    const/16 v19, 0x37

    .line 344
    const/16 v20, 0x9

    .line 341
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 348
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_10
    const/16 v18, 0x6f

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 349
    const-string/jumbo v18, "Update core FIFO Batch"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 351
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 353
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 354
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 355
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 357
    :cond_11
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 358
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 359
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 360
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 363
    .restart local v14    # "packet":[B
    const/16 v18, 0x17

    .line 364
    const/16 v19, 0x37

    .line 365
    const/16 v20, 0xa

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 369
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_12
    const/16 v18, 0x70

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 370
    const-string/jumbo v18, "Stop core FIFO Batch"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 372
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 374
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 375
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 376
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 378
    :cond_13
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 379
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 380
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 381
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 384
    .restart local v14    # "packet":[B
    const/16 v18, 0x17

    .line 385
    const/16 v19, 0x37

    .line 386
    const/16 v20, 0xb

    .line 383
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 390
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_14
    const/16 v18, 0x71

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 391
    const-string/jumbo v18, "Request core FIFO Batch Location"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 393
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 395
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 396
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 397
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 399
    :cond_15
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 400
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 401
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 402
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 405
    .restart local v14    # "packet":[B
    const/16 v18, 0x17

    .line 406
    const/16 v19, 0x37

    .line 407
    const/16 v20, 0xc

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 410
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_16
    const/16 v18, 0x72

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 411
    const-string/jumbo v18, "Flush FIFO Batch Location"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 416
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    .line 413
    const/16 v19, 0x17

    .line 414
    const/16 v20, 0x37

    .line 415
    const/16 v21, 0xd

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 417
    :cond_17
    const/16 v18, 0x73

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 418
    const-string/jumbo v18, "Inject core FIFO Batch Location"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 420
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 422
    .restart local v7    # "data":[I
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 423
    const-string/jumbo v18, "missing data"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 424
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 426
    :cond_18
    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 427
    .restart local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 428
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 429
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 432
    .restart local v14    # "packet":[B
    const/16 v18, 0x17

    .line 433
    const/16 v19, 0x37

    .line 434
    const/16 v20, 0xe

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 437
    .end local v5    # "byteArray":[B
    .end local v6    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[I
    .end local v14    # "packet":[B
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_19
    const/16 v18, 0x74

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 438
    const-string/jumbo v18, "Cleanup FIFO Batch Location"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 443
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    .line 440
    const/16 v19, 0x17

    .line 441
    const/16 v20, 0x37

    .line 442
    const/16 v21, 0xf

    .line 439
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 444
    :cond_1a
    const/16 v18, 0x6d

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 445
    const-string/jumbo v18, "Status remove"

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 447
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mPauseResume:I

    .line 448
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->isARStarted:Z

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofences:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->mGeofenceUpdates:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 453
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_0
.end method
