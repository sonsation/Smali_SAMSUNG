.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_CMD_DRK_V1_WRITING_END:Ljava/lang/String; = "FF"

.field private static final AT_CMD_DRK_V2_VERSION:Ljava/lang/String; = "01"

.field private static final AT_CMD_DRK_V2_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_MAIN_INDEX:I = 0x0

.field private static final AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final AT_MAIN_INDEX_VERIFY:I = 0x0

.field private static final AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final AT_MAIN_READ_DATA:I = 0xa

.field private static final AT_MAIN_VERIFY:I = 0x0

.field private static final AT_MAIN_WRITE_DATA:I = 0x14

.field private static final AT_MID_INDEX:I = 0x1

.field private static final AT_MINOR_INDEX:I = 0x2

.field private static final AT_RESPNOSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field private static final AT_RESPONSE_EXCEPION_OCCURS:Ljava/lang/String; = "NG_FAIL(EXCEPTION_OCCURS)"

.field private static final AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field private static final CSR_BRANCH_ID_LENGTH:I = 0x3

.field private static final CSR_REQUEST_PHASE2:I = 0x16

.field private static final CSR_TIMESTAMP_LENGTH:I = 0xe

.field private static final DRK_V1_SEQ_NO:I = 0x2

.field private static final DRK_V2_SEQ_NO:I = 0x3

.field private static final DRK_V2_VERSION:I = 0x2

.field private static final GOOGLE_ATTESTATION_KEY_VERIFY:I = 0x4

.field private static final GOOGLE_ATTESTATION_KEY_WRITE:I = 0x1a

.field private static final KEY_DRK_V1:I = 0x0

.field private static final KEY_DRK_V2:I = 0x2

.field private static final KEY_GOOGLE_ATTESTATION:I = 0x1

.field private static final KEY_SAMSUNG_ATTESTATION:I = 0x3

.field private static final NO_ERROR:I = 0x0

.field private static final SAMSUNG_ATTESTATION_CSR_REQUEST:I = 0x18

.field private static final SAMSUNG_ATTESTATION_KEY_VERIFY:I = 0x3

.field private static final SAMSUNG_ATTESTATION_KEY_WRITE:I = 0x19

.field private static final SAMSUNG_DEVICE_ROOT_KEY_UID_READ_PHASE1:I = 0xa

.field private static final SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE1:I = 0x0

.field private static final SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE2:I = 0x2

.field private static final SAMSUNG_DEVICE_ROOT_KEY_VERSION_READ_PHASE2:I = 0xc

.field private static final SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE1:I = 0x14

.field private static final SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE2:I = 0x17

.field private static final SAMSUNG_PAYMENT_KEY_UID_READ_PHASE1:I = 0xb

.field private static final SAMSUNG_PAYMENT_KEY_VERIFY:I = 0x1

.field private static final SAMSUNG_PAYMENT_KEY_WRITE_PHASE1:I = 0x15

.field private static final TAG:Ljava/lang/String; = "DevRootKeyATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private mTlvKeyBlob:Ljava/lang/String;

.field private mTlvKeyBlobCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "devkwcmd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sput-object p1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 111
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 112
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->nativeInit()V

    .line 107
    return-void
.end method

.method private appendKeyBlob(ILjava/lang/String;)Z
    .locals 3
    .param p1, "sequenceNo"    # I
    .param p2, "keyBlob"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 433
    if-ne p1, v2, :cond_0

    .line 435
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 436
    iput-object p2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 452
    :goto_0
    return v2

    .line 441
    :cond_0
    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 443
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method private native generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private getKeyBlobIndex()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method private getTotalKeyBlob()[B
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private initTlvKeyBlob()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 465
    return-void
.end method

.method private native installDeviceBoundCertificate(I[B)I
.end method

.method private native installDeviceUnboundKey(I[B)I
.end method

.method private native isSupportedDrkV2()Z
.end method

.method private native nativeInit()V
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v2, 0x0

    .line 419
    .local v2, "result":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 428
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 423
    .restart local v2    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private native updateCertificateIssuedList(Ljava/lang/String;)Z
.end method

.method private native validateDeviceKey(I)I
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 118
    .local v0, "response":Ljava/lang/String;
    const-string v0, "DEVROOTK"

    .line 119
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v9, 0x0

    .line 126
    .local v9, "ret":I
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .line 128
    .local v8, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DevRootKeyATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "params":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 131
    .local v5, "keyType":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 132
    const-string v13, "NG_FAIL(INVALID_PARAM)"

    return-object v13

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v13, :cond_1

    .line 135
    const-string v13, "NG_FAIL(INSTANCE ERROR)"

    return-object v13

    .line 137
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v13}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v13

    if-nez v13, :cond_2

    .line 138
    const-string v13, "NG_FAIL(FAILED CONNECTION)"

    return-object v13

    .line 141
    :cond_2
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_3

    .line 144
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 146
    :cond_3
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 148
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    return-object v8

    .line 153
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 392
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 402
    .end local v5    # "keyType":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_5

    .line 404
    new-instance v4, Ljava/lang/String;

    .line 405
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 406
    const-string v14, " "

    .line 405
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 406
    const-string v14, " Key installation : "

    .line 405
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 406
    if-nez v9, :cond_21

    const-string v13, "Success."

    .line 405
    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 406
    const-string v14, "\n"

    .line 405
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 404
    invoke-direct {v4, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 408
    .local v4, "keyInstallationStatusLog":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/DevRootKeyATCmd;->updateCertificateIssuedList(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 409
    const-string v13, "DevRootKeyATCmd"

    const-string v14, "Failed to update list."

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v4    # "keyInstallationStatusLog":Ljava/lang/String;
    :cond_5
    return-object v8

    .line 157
    .restart local v5    # "keyType":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 158
    const/4 v14, 0x1

    .line 157
    invoke-virtual {v13, v14}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 159
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 161
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 167
    :pswitch_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 171
    :pswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v9

    .line 172
    if-nez v9, :cond_7

    .line 173
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 175
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 179
    :pswitch_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v9

    .line 180
    if-nez v9, :cond_8

    .line 181
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 183
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 187
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 188
    const/4 v14, 0x1

    .line 187
    invoke-virtual {v13, v14}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "Uid":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 193
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 197
    .end local v2    # "Uid":Ljava/lang/String;
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 198
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 200
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 204
    :pswitch_7
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, "strSequenceNo":Ljava/lang/String;
    const-string v13, "FF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 209
    new-instance v6, Ljava/lang/String;

    const-string v13, "DRK_V1"

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    .local v6, "keyType":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    .end local v5    # "keyType":Ljava/lang/String;
    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v9

    .line 214
    if-nez v9, :cond_b

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 220
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    move-object v5, v6

    .end local v6    # "keyType":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    goto/16 :goto_0

    .line 217
    .end local v5    # "keyType":Ljava/lang/String;
    .restart local v6    # "keyType":Ljava/lang/String;
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto :goto_2

    .line 224
    .end local v6    # "keyType":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    :cond_c
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 226
    .local v11, "sequenceNo":I
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    aget-object v14, v7, v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 227
    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 226
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 228
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 230
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TB-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 235
    .end local v11    # "sequenceNo":I
    .end local v12    # "strSequenceNo":Ljava/lang/String;
    :pswitch_8
    const/4 v13, 0x2

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x11

    if-eq v13, v14, :cond_e

    .line 237
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 242
    :cond_e
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/16 v15, 0xe

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 243
    const/4 v14, 0x2

    aget-object v14, v7, v14

    const/16 v15, 0xe

    const/16 v16, 0x11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 241
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    .line 245
    .local v10, "retBytes":[B
    if-eqz v10, :cond_f

    .line 246
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 248
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 252
    .end local v10    # "retBytes":[B
    :pswitch_9
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 254
    .restart local v12    # "strSequenceNo":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "01"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 256
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 261
    :cond_10
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v13

    add-int/lit8 v11, v13, 0x1

    .line 266
    .restart local v11    # "sequenceNo":I
    :goto_3
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    aget-object v14, v7, v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 267
    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 266
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 269
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TB-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 264
    .end local v11    # "sequenceNo":I
    :cond_11
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "sequenceNo":I
    goto :goto_3

    .line 273
    :cond_12
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 275
    new-instance v6, Ljava/lang/String;

    const-string v13, "DRK_V2"

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 277
    .restart local v6    # "keyType":Ljava/lang/String;
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    .end local v5    # "keyType":Ljava/lang/String;
    move-result-object v13

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v9

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 283
    if-eqz v9, :cond_13

    .line 285
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v8

    move-object v5, v6

    .line 286
    .end local v6    # "keyType":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    goto/16 :goto_0

    .end local v5    # "keyType":Ljava/lang/String;
    .restart local v6    # "keyType":Ljava/lang/String;
    :cond_13
    move-object v5, v6

    .line 289
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_14
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 293
    .end local v11    # "sequenceNo":I
    .end local v12    # "strSequenceNo":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    :pswitch_a
    const/4 v13, 0x2

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x11

    if-eq v13, v14, :cond_15

    .line 295
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 300
    :cond_15
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/16 v15, 0xe

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 301
    const/4 v14, 0x2

    aget-object v14, v7, v14

    const/16 v15, 0xe

    const/16 v16, 0x11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 299
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    .line 303
    .restart local v10    # "retBytes":[B
    if-eqz v10, :cond_16

    .line 304
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 306
    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 310
    .end local v10    # "retBytes":[B
    :pswitch_b
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 312
    .restart local v12    # "strSequenceNo":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "01"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 314
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 319
    :cond_17
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v13

    add-int/lit8 v11, v13, 0x1

    .line 324
    .restart local v11    # "sequenceNo":I
    :goto_4
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    aget-object v14, v7, v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 325
    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 324
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 327
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TB-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 322
    .end local v11    # "sequenceNo":I
    :cond_18
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "sequenceNo":I
    goto :goto_4

    .line 331
    :cond_19
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 333
    new-instance v6, Ljava/lang/String;

    const-string v13, "SAK_V1"

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 335
    .restart local v6    # "keyType":Ljava/lang/String;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    .end local v5    # "keyType":Ljava/lang/String;
    move-result-object v13

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v9

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 341
    if-eqz v9, :cond_1a

    .line 343
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v8

    move-object v5, v6

    .line 344
    .end local v6    # "keyType":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    goto/16 :goto_0

    .end local v5    # "keyType":Ljava/lang/String;
    .restart local v6    # "keyType":Ljava/lang/String;
    :cond_1a
    move-object v5, v6

    .line 347
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_1b
    :try_start_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 351
    .end local v11    # "sequenceNo":I
    .end local v12    # "strSequenceNo":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    :pswitch_c
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    const/4 v15, 0x5

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 353
    .restart local v12    # "strSequenceNo":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "01"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 355
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(INVALID_PARAM)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 360
    :cond_1c
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v13

    add-int/lit8 v11, v13, 0x1

    .line 365
    .restart local v11    # "sequenceNo":I
    :goto_5
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const/4 v14, 0x2

    aget-object v14, v7, v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 366
    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 365
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 368
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " TB-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 363
    .end local v11    # "sequenceNo":I
    :cond_1d
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "sequenceNo":I
    goto :goto_5

    .line 372
    :cond_1e
    const-string v13, "FFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 374
    new-instance v6, Ljava/lang/String;

    const-string v13, "GAK_V1"

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 376
    .restart local v6    # "keyType":Ljava/lang/String;
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    .end local v5    # "keyType":Ljava/lang/String;
    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v9

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 382
    if-eqz v9, :cond_1f

    .line 384
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v8

    move-object v5, v6

    .line 385
    .end local v6    # "keyType":Ljava/lang/String;
    .local v5, "keyType":Ljava/lang/String;
    goto/16 :goto_0

    .end local v5    # "keyType":Ljava/lang/String;
    .restart local v6    # "keyType":Ljava/lang/String;
    :cond_1f
    move-object v5, v6

    .line 388
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_20
    :try_start_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "OK"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 397
    .end local v11    # "sequenceNo":I
    .end local v12    # "strSequenceNo":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NG_FAIL(EXCEPTION_OCCURS)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 406
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_21
    const-string v13, "Failure."

    goto/16 :goto_1

    .line 397
    .restart local v6    # "keyType":Ljava/lang/String;
    .restart local v12    # "strSequenceNo":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "keyType":Ljava/lang/String;
    .restart local v5    # "keyType":Ljava/lang/String;
    goto :goto_6

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
