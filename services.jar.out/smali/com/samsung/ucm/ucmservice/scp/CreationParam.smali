.class public Lcom/samsung/ucm/ucmservice/scp/CreationParam;
.super Ljava/lang/Object;
.source "CreationParam.java"


# static fields
.field public static final KEY_ECC_PARAM_FRP_256:I = 0x40

.field public static final KEY_ECC_PARAM_NIST_P256:I = 0x0

.field public static final KEY_TYPE_DH:I = 0x89

.field public static final KEY_TYPE_ECC:I = 0x90

.field public static final KEY_USAGE_BIT_ENCRYPTION:I = 0x8

.field public static final KEY_USAGE_BIT_MAC:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_KEY_ID:B = -0x6dt

.field private static final TAG_KEY_LENGTH:B = -0x7ft

.field private static final TAG_KEY_PARAM_DH_G:B = -0x74t

.field private static final TAG_KEY_PARAM_DH_P:B = -0x75t

.field private static final TAG_KEY_PARAM_ECC:B = -0x76t

.field private static final TAG_KEY_TYPE:B = -0x80t

.field private static final TAG_KEY_USAGE:B = -0x6bt

.field private static final TAG_KEY_VERSION:B = -0x6ct

.field private static final TAG_SCP_CREATION_PARAM:S = -0x40e0s

.field private static final TAG_SCP_PROTOCOL:B = -0x6ft


# instance fields
.field private keyId:[B

.field private keyLength:[B

.field private keyType:[B

.field private keyUsage:[B

.field private keyVersion:[B

.field private paramDHG:[B

.field private paramDHP:[B

.field private paramECC:[B

.field private protocol:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "UCM.SCP.Param"

    sput-object v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    .line 21
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    .line 22
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    .line 23
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    .line 24
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    .line 25
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    .line 27
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    .line 39
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/16 v1, 0x65

    aput-byte v1, v0, v2

    .line 40
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    aput-byte v2, v0, v2

    .line 41
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    aput-byte v2, v0, v2

    .line 42
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    const/16 v1, 0x3c

    aput-byte v1, v0, v2

    .line 45
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/16 v1, 0x20

    aput-byte v1, v0, v2

    .line 46
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    const/16 v1, -0x70

    aput-byte v1, v0, v2

    .line 47
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    aput-byte v2, v0, v2

    .line 38
    return-void
.end method

.method public static generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x90

    const/4 v3, 0x0

    .line 301
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    .line 303
    .local v0, "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    if-nez p0, :cond_0

    .line 304
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no bundle for SCP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v3

    .line 308
    :cond_0
    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 309
    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setProtocol(I)V

    .line 315
    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyId(I)V

    .line 318
    :cond_1
    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyVersion(I)V

    .line 321
    :cond_2
    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyLength(I)V

    .line 324
    :cond_3
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableEncryption()V

    .line 331
    :cond_4
    :goto_0
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 333
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableMAC()V

    .line 338
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 370
    :goto_2
    return-object v0

    .line 311
    :cond_6
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SCP param generation faield :: no protocol"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-object v3

    .line 328
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableEncryption()V

    goto :goto_0

    .line 335
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableMAC()V

    goto :goto_1

    .line 340
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    .line 341
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 342
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_2

    .line 344
    :cond_9
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find ECC curve info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-object v3

    .line 349
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    .line 350
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 351
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_2

    .line 353
    :cond_a
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find ECC curve info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v3

    .line 358
    :pswitch_2
    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    .line 359
    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 360
    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 359
    if-eqz v1, :cond_b

    .line 361
    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHP([B)V

    .line 362
    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHG([B)V

    goto :goto_2

    .line 364
    :cond_b
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find DH parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v3

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static generateParam([B)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .locals 5
    .param p0, "tlv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    .line 382
    .local v0, "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    .line 384
    .local v1, "tlv_scp_param":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    const/4 v2, 0x0

    .line 386
    .local v2, "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6f

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 387
    .local v2, "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_0

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find protocol"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    .line 390
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6d

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 391
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_1

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyId"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    .line 394
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6c

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 395
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_2

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyVersion"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    .line 398
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6b

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 399
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_3

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyUsage"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    .line 402
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x7f

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 403
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_4

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyLength"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    .line 406
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x80

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 407
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_5

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyType"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    .line 410
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x89

    if-ne v3, v4, :cond_8

    .line 411
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x75

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 412
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_6

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find DH-p"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    .line 415
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x74

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 416
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_7

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find DH-g"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_7
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    .line 426
    :goto_0
    return-object v0

    .line 418
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_a

    .line 419
    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x76

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    .end local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 420
    .restart local v2    # "tmp":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-nez v2, :cond_9

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyId"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    goto :goto_0

    .line 423
    :cond_a
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string/jumbo v4, "unknown key type"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private toHex([B)Ljava/lang/String;
    .locals 8
    .param p1, "a"    # [B

    .prologue
    const/4 v3, 0x0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p1, v2

    .line 253
    .local v0, "b":B
    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public disableEncryption()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "disable encryption not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableMAC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "disable MAC not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEncryption()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    .line 82
    .local v0, "usage":I
    or-int/lit8 v0, v0, 0x8

    .line 83
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 80
    return-void
.end method

.method public enableMAC()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    .line 102
    .local v0, "usage":I
    or-int/lit8 v0, v0, 0x8

    .line 103
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 100
    return-void
.end method

.method public getKeyId()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyLength()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyType()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyUsage()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyVersion()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getParamDHG()[B
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    return-object v0
.end method

.method public getParamDHP()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    return-object v0
.end method

.method public getParamECC()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getProtocol()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public setKeyId(I)V
    .locals 3
    .param p1, "arg"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 64
    return-void
.end method

.method public setKeyLength(I)V
    .locals 3
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "key length is fixed as 256 bit"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 121
    return-void
.end method

.method public setKeyType(I)V
    .locals 3
    .param p1, "arg"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 128
    return-void
.end method

.method public setKeyVersion(I)V
    .locals 3
    .param p1, "arg"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 72
    return-void
.end method

.method public setParamDHG([B)V
    .locals 0
    .param p1, "arg"    # [B

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    .line 142
    return-void
.end method

.method public setParamDHP([B)V
    .locals 1
    .param p1, "arg"    # [B

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    .line 138
    return-void
.end method

.method public setParamECC(I)V
    .locals 3
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 133
    return-void
.end method

.method public setProtocol(I)V
    .locals 3
    .param p1, "arg"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 56
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 227
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 232
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 247
    :goto_2
    return-object v0

    .line 229
    :cond_0
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 234
    :cond_1
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 239
    :pswitch_0
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_2

    .line 242
    :pswitch_1
    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 243
    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SCP creation-param {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v1, Ljava/lang/String;

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    const-string/jumbo v3, ", keyId:"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    const-string/jumbo v3, ", keyVersion:"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    const-string/jumbo v3, ", keyUsage:"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    const-string/jumbo v3, ", keyLength:"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    const-string/jumbo v3, ", keyType:"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, "KEY PARAM {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_1

    .line 273
    const-string/jumbo v1, "DH-P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-nez v1, :cond_0

    .line 275
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    const-string/jumbo v1, ", DH-G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :goto_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_2

    .line 281
    const-string/jumbo v1, "ECC curveId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    aget-byte v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_2
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toTLV()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x40e0

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 198
    .local v0, "tlv_scp_param":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 199
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6d

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 200
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6c

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 201
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6b

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 202
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x7f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 203
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x80

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v2, "no DH-p"

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x75

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 209
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x74

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 216
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v1

    return-object v1

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_2

    .line 211
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x76

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    goto :goto_0

    .line 213
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "unknown key type"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
