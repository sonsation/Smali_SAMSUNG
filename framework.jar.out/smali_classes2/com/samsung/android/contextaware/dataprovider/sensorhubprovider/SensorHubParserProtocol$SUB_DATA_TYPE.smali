.class public final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SUB_DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_ACCELEROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_BAROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_GEOMAGNETIC:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_GESTURE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_GYROSCOPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_LIGHT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_PROXIMITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

.field public static final enum ENVIRONMENT_SENSORTYPE_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;


# instance fields
.field public value:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_ACCELEROMETER"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 346
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_ACCELEROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 348
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_GYROSCOPE"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 349
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GYROSCOPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 351
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_GEOMAGNETIC"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 352
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GEOMAGNETIC:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 354
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_BAROMETER"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 355
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_BAROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 357
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_GESTURE"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 358
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GESTURE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 360
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_PROXIMITY"

    const/4 v2, 0x5

    .line 361
    const/4 v3, 0x5

    .line 360
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 361
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_PROXIMITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 363
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_TEMPERATURE_HUMIDITY"

    const/4 v2, 0x6

    .line 364
    const/4 v3, 0x6

    .line 363
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 364
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 366
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const-string/jumbo v1, "ENVIRONMENT_SENSORTYPE_LIGHT"

    const/4 v2, 0x7

    .line 367
    const/4 v3, 0x7

    .line 366
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    .line 367
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_LIGHT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    .line 343
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_ACCELEROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GYROSCOPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GEOMAGNETIC:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_BAROMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_GESTURE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_PROXIMITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_LIGHT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "value"    # B

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 379
    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    .line 378
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    return-object v0
.end method
