.class Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;
.super Ljava/lang/Object;
.source "SeslTwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "SeslTwilightManager"

.field private static sInstance:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Landroid/location/LocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 67
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->sInstance:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 47
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    const-string v0, "location"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->sInstance:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->sInstance:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 8

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "coarseLoc":Landroid/location/Location;
    const/4 v1, 0x0

    .line 104
    .local v1, "fineLoc":Landroid/location/Location;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/content/SeslPermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, "permission":I
    if-nez v2, :cond_0

    .line 107
    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/content/SeslPermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 112
    if-nez v2, :cond_1

    .line 113
    const-string v3, "gps"

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 116
    :cond_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 121
    .end local v1    # "fineLoc":Landroid/location/Location;
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "fineLoc":Landroid/location/Location;
    :cond_3
    move-object v1, v0

    .line 118
    goto :goto_0

    .line 121
    :cond_4
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SeslTwilightManager"

    const-string v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStateValid()Z
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    iget-wide v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setInstance(Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;)V
    .locals 0
    .param p0, "twilightManager"    # Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    sput-object p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->sInstance:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;

    .line 56
    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 24
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    .line 144
    .local v14, "state":Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 145
    .local v12, "now":J
    invoke-static {}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->getInstance()Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;

    move-result-object v3

    .line 148
    .local v3, "calculator":Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;
    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 148
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->calculateTwilight(JDD)V

    .line 150
    iget-wide v0, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->sunset:J

    move-wide/from16 v22, v0

    .line 153
    .local v22, "yesterdaySunset":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->calculateTwilight(JDD)V

    .line 154
    iget v4, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 155
    .local v2, "isNight":Z
    :goto_0
    iget-wide v0, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    .line 156
    .local v16, "todaySunrise":J
    iget-wide v0, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    .line 159
    .local v18, "todaySunset":J
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 159
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->calculateTwilight(JDD)V

    .line 161
    iget-wide v0, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    .line 164
    .local v20, "tomorrowSunrise":J
    const-wide/16 v10, 0x0

    .line 165
    .local v10, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-nez v4, :cond_2

    .line 167
    :cond_0
    const-wide/32 v4, 0x2932e00

    add-long v10, v12, v4

    .line 181
    :goto_1
    iput-boolean v2, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->isNight:Z

    .line 182
    move-wide/from16 v0, v22

    iput-wide v0, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->yesterdaySunset:J

    .line 183
    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->todaySunrise:J

    .line 184
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->todaySunset:J

    .line 185
    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->tomorrowSunrise:J

    .line 186
    iput-wide v10, v14, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->nextUpdate:J

    .line 187
    return-void

    .line 154
    .end local v2    # "isNight":Z
    .end local v10    # "nextUpdate":J
    .end local v16    # "todaySunrise":J
    .end local v18    # "todaySunset":J
    .end local v20    # "tomorrowSunrise":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 169
    .restart local v2    # "isNight":Z
    .restart local v10    # "nextUpdate":J
    .restart local v16    # "todaySunrise":J
    .restart local v18    # "todaySunset":J
    .restart local v20    # "tomorrowSunrise":J
    :cond_2
    cmp-long v4, v12, v18

    if-lez v4, :cond_3

    .line 170
    add-long v10, v10, v20

    .line 177
    :goto_2
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_1

    .line 171
    :cond_3
    cmp-long v4, v12, v16

    if-lez v4, :cond_4

    .line 172
    add-long v10, v10, v18

    goto :goto_2

    .line 174
    :cond_4
    add-long v10, v10, v16

    goto :goto_2
.end method


# virtual methods
.method isNight()Z
    .locals 6

    .prologue
    .line 75
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->mTwilightState:Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;

    .line 77
    .local v3, "state":Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->isStateValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-boolean v4, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->isNight:Z

    .line 97
    :goto_0
    return v4

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    .line 84
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_1

    .line 85
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager;->updateState(Landroid/location/Location;)V

    .line 86
    iget-boolean v4, v3, Lcom/samsung/android/support/sesl/component/app/SeslTwilightManager$TwilightState;->isNight:Z

    goto :goto_0

    .line 89
    :cond_1
    const-string v4, "SeslTwilightManager"

    const-string v5, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 97
    .local v1, "hour":I
    const/4 v4, 0x6

    if-lt v1, v4, :cond_2

    const/16 v4, 0x16

    if-lt v1, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
