.class public Lcom/facebook/places/internal/BleScannerImpl;
.super Ljava/lang/Object;
.source "BleScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/BleScanner;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;
    }
.end annotation


# static fields
.field private static final EDDYSTONE_PREFIX:[B

.field private static final GRAVITY_PREFIX:[B

.field private static final IBEACON_PREFIX:[B

.field private static final TAG:Ljava/lang/String; = "BleScannerImpl"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private isScanInProgress:Z

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

.field private final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "ff4c000215"

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->IBEACON_PREFIX:[B

    .line 56
    const-string v0, "16aafe"

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->EDDYSTONE_PREFIX:[B

    .line 57
    const-string v0, "17ffab01"

    invoke-static {v0}, Lcom/facebook/places/internal/BleScannerImpl;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/places/internal/BleScannerImpl;->GRAVITY_PREFIX:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 71
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$202(Lcom/facebook/places/internal/BleScannerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/facebook/places/internal/BleScannerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/places/internal/BleScannerImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/internal/BleScannerImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;

    move-result-object v0

    return-object v0
.end method

.method private static formatPayload([B)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # [B

    .prologue
    .line 240
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 241
    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/facebook/places/internal/BleScannerImpl;->getPayloadLength([B)I

    move-result v0

    .line 244
    .local v0, "payloadLength":I
    invoke-static {p0, v0}, Lcom/facebook/places/internal/BleScannerImpl;->toHexString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static fromHexString(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 350
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 351
    div-int/lit8 v3, v1, 0x2

    .line 352
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 353
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 350
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 355
    :cond_0
    return-object v0
.end method

.method private static getPayloadLength([B)I
    .locals 3
    .param p0, "payload"    # [B

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "offset":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 250
    aget-byte v0, p0, v1

    .line 251
    .local v0, "length":B
    if-nez v0, :cond_0

    .line 260
    .end local v0    # "length":B
    .end local v1    # "offset":I
    :goto_1
    return v1

    .line 254
    .restart local v0    # "length":B
    .restart local v1    # "offset":I
    :cond_0
    if-gez v0, :cond_1

    .line 256
    array-length v1, p0

    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    .line 259
    goto :goto_0

    .line 260
    .end local v0    # "length":B
    :cond_2
    array-length v1, p0

    goto :goto_1
.end method

.method private static isAdvPacketBeacon([BI)Z
    .locals 3
    .param p0, "payload"    # [B
    .param p1, "advStartIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 305
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/facebook/places/internal/BleScannerImpl;->IBEACON_PREFIX:[B

    invoke-static {p0, v1, v2}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/facebook/places/internal/BleScannerImpl;->EDDYSTONE_PREFIX:[B

    invoke-static {p0, v1, v2}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    sget-object v1, Lcom/facebook/places/internal/BleScannerImpl;->GRAVITY_PREFIX:[B

    invoke-static {p0, p1, v1}, Lcom/facebook/places/internal/BleScannerImpl;->isArrayContained([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-static {p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;->isAltBeacon([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAltBeacon([BI)Z
    .locals 7
    .param p0, "payload"    # [B
    .param p1, "startIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 321
    add-int/lit8 v5, p1, 0x5

    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 322
    aget-byte v2, p0, p1

    .line 323
    .local v2, "length":B
    add-int/lit8 v5, p1, 0x1

    aget-byte v3, p0, v5

    .line 324
    .local v3, "packetType":B
    add-int/lit8 v5, p1, 0x4

    aget-byte v0, p0, v5

    .line 325
    .local v0, "beaconCode1":B
    add-int/lit8 v5, p1, 0x5

    aget-byte v1, p0, v5

    .line 326
    .local v1, "beaconCode2":B
    const/16 v5, 0x1b

    if-ne v2, v5, :cond_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/16 v5, -0x42

    if-ne v0, v5, :cond_0

    const/16 v5, -0x54

    if-ne v1, v5, :cond_0

    const/4 v4, 0x1

    .line 331
    .end local v0    # "beaconCode1":B
    .end local v1    # "beaconCode2":B
    .end local v2    # "length":B
    .end local v3    # "packetType":B
    :cond_0
    return v4
.end method

.method private static isArrayContained([BI[B)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "startIndex1"    # I
    .param p2, "array2"    # [B

    .prologue
    const/4 v2, 0x0

    .line 335
    array-length v1, p2

    .line 336
    .local v1, "length":I
    add-int v3, p1, v1

    array-length v4, p0

    if-le v3, v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 340
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isBeacon([B)Z
    .locals 6
    .param p0, "payload"    # [B

    .prologue
    const/4 v4, 0x0

    .line 282
    if-nez p0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 285
    :cond_1
    const/4 v3, 0x0

    .line 286
    .local v3, "startIndex":I
    array-length v2, p0

    .line 287
    .local v2, "payloadLength":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 288
    aget-byte v0, p0, v3

    .line 289
    .local v0, "advLengthField":I
    if-lez v0, :cond_0

    .line 292
    add-int/lit8 v1, v0, 0x1

    .line 293
    .local v1, "advPacketLength":I
    add-int v5, v3, v1

    if-gt v5, v2, :cond_0

    .line 296
    invoke-static {p0, v3}, Lcom/facebook/places/internal/BleScannerImpl;->isAdvPacketBeacon([BI)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 297
    const/4 v4, 0x1

    goto :goto_0

    .line 299
    :cond_2
    add-int/2addr v3, v1

    .line 300
    goto :goto_1
.end method

.method private static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 276
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "BleScannerImpl"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_0
    return-void
.end method

.method private static newBluetoothScanResult(Landroid/bluetooth/le/ScanResult;)Lcom/facebook/places/internal/BluetoothScanResult;
    .locals 6
    .param p0, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    .line 229
    .local v3, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    .line 230
    .local v4, "scanRecordBytes":[B
    invoke-static {v4}, Lcom/facebook/places/internal/BleScannerImpl;->isBeacon([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/places/internal/BleScannerImpl;->formatPayload([B)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "payload":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    .line 233
    .local v2, "rssi":I
    new-instance v0, Lcom/facebook/places/internal/BluetoothScanResult;

    invoke-direct {v0, v1, v2}, Lcom/facebook/places/internal/BluetoothScanResult;-><init>(Ljava/lang/String;I)V

    .line 236
    .end local v1    # "payload":Ljava/lang/String;
    .end local v2    # "rssi":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toHexString([BI)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 264
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-ltz p1, :cond_0

    array-length v3, p0

    if-le p1, v3, :cond_1

    .line 266
    :cond_0
    array-length p1, p0

    .line 268
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 269
    aget-byte v0, p0, v1

    .line 270
    .local v0, "b":B
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private waitForMainLooper(J)V
    .locals 5
    .param p1, "maxWaitTimeoutMs"    # J

    .prologue
    .line 133
    :try_start_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    .local v2, "lock":Ljava/lang/Object;
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/facebook/places/internal/BleScannerImpl$1;

    invoke-direct {v3, p0, v2}, Lcom/facebook/places/internal/BleScannerImpl$1;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 151
    monitor-exit v2

    .line 155
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "lock":Ljava/lang/Object;
    :goto_0
    return-void

    .line 151
    .restart local v2    # "lock":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .end local v2    # "lock":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception waiting for main looper"

    invoke-static {v3, v0}, Lcom/facebook/places/internal/BleScannerImpl;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getErrorCode()I
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothMaxScanResults()I

    move-result v1

    .line 167
    .local v1, "maxSanResults":I
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    new-instance v0, Lcom/facebook/places/internal/BleScannerImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/places/internal/BleScannerImpl$2;-><init>(Lcom/facebook/places/internal/BleScannerImpl;)V

    .line 176
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-object v2

    .line 179
    .end local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :cond_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .restart local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 182
    .end local v1    # "maxSanResults":I
    .end local v2    # "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized initAndCheckEligibility()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 76
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 84
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    :cond_3
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 89
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_5

    .line 90
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startScanning()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->SCAN_ALREADY_IN_PROGRESS:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    :cond_0
    :try_start_1
    new-instance v2, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;-><init>(Lcom/facebook/places/internal/BleScannerImpl;Lcom/facebook/places/internal/BleScannerImpl$1;)V

    iput-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->errorCode:I

    .line 103
    iget-object v3, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 105
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :try_start_3
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :cond_1
    :try_start_6
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 113
    .local v0, "builder":Landroid/bluetooth/le/ScanSettings$Builder;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 114
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 115
    iget-object v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "builder":Landroid/bluetooth/le/ScanSettings$Builder;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v2, Lcom/facebook/places/internal/ScannerException;

    sget-object v3, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v2, v3}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized stopScanning()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/facebook/places/internal/BleScannerImpl;->scanCallBack:Lcom/facebook/places/internal/BleScannerImpl$ScanCallBackImpl;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothFlushResultsTimeoutMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/places/internal/BleScannerImpl;->waitForMainLooper(J)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/places/internal/BleScannerImpl;->isScanInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
