.class public final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REQUEST_DATA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

.field public static final enum REQUEST_CURRENT_POSITION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;


# instance fields
.field public value:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    const-string/jumbo v1, "REQUEST_CURRENT_POSITION"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;-><init>(Ljava/lang/String;IB)V

    .line 391
    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    .line 388
    new-array v0, v3, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "value"    # B

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput-byte p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->value:B

    .line 402
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    return-object v0
.end method
