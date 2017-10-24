.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;
    }
.end annotation


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x4000

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mApStatus:I

.field private mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private final mSensorHubListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)I
    .locals 1
    .param p1, "dataPacket"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 82
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    .line 39
    return-void
.end method

.method private checkInstruction(B)Z
    .locals 6
    .param p1, "inst"    # B

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 382
    .local v0, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    iget-byte v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v5, p1, :cond_0

    .line 383
    const/4 v1, 0x1

    return v1

    .line 381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_1
    return v2
.end method

.method private checkLibType(B)Z
    .locals 6
    .param p1, "type"    # B

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 399
    .local v0, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    iget-byte v5, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v5, p1, :cond_0

    .line 400
    const/4 v1, 0x1

    return v1

    .line 398
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_1
    return v2
.end method

.method private checkPacketSize([B)I
    .locals 2
    .param p1, "packet"    # [B

    .prologue
    .line 257
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 258
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    .line 259
    :cond_0
    array-length v0, p1

    const/16 v1, 0x4000

    if-le v0, v1, :cond_1

    .line 260
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_OVERFLOW:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    .line 262
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 78
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parse([B)I
    .locals 8
    .param p1, "dataPacket"    # [B

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 196
    .local v3, "packet":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "buffer size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)I

    move-result v0

    .line 199
    .local v0, "checkResult":I
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    if-eq v0, v6, :cond_0

    .line 200
    return v0

    .line 203
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    :cond_1
    const-string/jumbo v6, "Packet is null"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 210
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :cond_2
    array-length v6, v3

    if-ge v1, v6, :cond_7

    .line 211
    array-length v6, v3

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x2

    if-gez v6, :cond_4

    .line 212
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    .line 207
    .end local v1    # "i":I
    :cond_3
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .restart local v1    # "i":I
    :cond_4
    aget-byte v6, v3, v1

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 216
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    .line 219
    :cond_5
    aget-byte v2, v3, v1

    .line 221
    .local v2, "inst":B
    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v3, v1

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 222
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    .line 224
    :cond_6
    aget-byte v5, v3, v1

    .line 226
    .local v5, "type":B
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v2, v5, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v1

    .line 227
    if-gez v1, :cond_2

    .line 228
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    .line 232
    .end local v2    # "inst":B
    .end local v5    # "type":B
    :cond_7
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6
.end method

.method private parseData(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    const/4 v3, -0x1

    .line 280
    move v1, p4

    .line 281
    .local v1, "tmpNext":I
    const/4 v0, 0x0

    .line 283
    .local v0, "parsingResult":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseNotiPowerData(BB[BI)I

    move-result v0

    .line 290
    if-lez v0, :cond_1

    .line 291
    return v0

    .line 284
    :cond_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_OBJECT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 286
    return v3

    .line 294
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseDebugMsg(BB[BI)I

    move-result v0

    .line 295
    if-lez v0, :cond_2

    .line 296
    return v0

    .line 299
    :cond_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-eq p1, v2, :cond_3

    .line 300
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 301
    return v3

    .line 304
    :cond_3
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_4

    .line 305
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 306
    :cond_4
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_EXT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_5

    .line 307
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    goto :goto_0

    .line 308
    :cond_5
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_REQUEST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_6

    .line 309
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    goto :goto_0

    .line 311
    :cond_6
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 312
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private parseDebugMsg(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    .line 360
    move v1, p4

    .line 361
    .local v1, "tmpNext":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 362
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 364
    .local v0, "debugMsgParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    .line 365
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    .line 370
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private parseNotiPowerData(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .prologue
    .line 333
    move v1, p4

    .line 334
    .local v1, "tmpNext":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 335
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 337
    .local v0, "notiParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    .line 338
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    .line 342
    :cond_0
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public final getExtLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getRequestLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    if-nez v1, :cond_2

    .line 131
    const-string/jumbo v1, "sensorhub"

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHubManager;

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v1, "mSensorHubManager is null."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CAESHubEvtHler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 142
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 144
    iput-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 145
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 147
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    .line 151
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 152
    const/4 v4, 0x1

    .line 151
    invoke-virtual {v3, v4}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v3

    .line 152
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/samsung/android/sensorhub/SensorHubManager;->registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;ILandroid/os/Handler;)Z

    .line 155
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 156
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 157
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 159
    iput v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 160
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 128
    return-void
.end method

.method public final initializePreparedSubCollection()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public final parseForScenarioTesting([B)V
    .locals 2
    .param p1, "packet"    # [B

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)I

    move-result v0

    .line 244
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 245
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 172
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sensorhub/SensorHubManager;->unregisterListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;)V

    .line 175
    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 177
    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 178
    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 179
    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 183
    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 166
    :cond_1
    return-void
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 443
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 445
    const-string/jumbo v0, "AP_NONE"

    .line 446
    .local v0, "apStatus":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2e

    if-ne v1, v2, :cond_1

    .line 447
    const-string/jumbo v0, "AP_SLEEP"

    .line 451
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 442
    return-void

    .line 448
    :cond_1
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_0

    .line 449
    const-string/jumbo v0, "AP_WAKEUP"

    goto :goto_0
.end method
