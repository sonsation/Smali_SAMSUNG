.class public Lcom/android/server/BBCManagerService;
.super Ljava/lang/Object;
.source "BBCManagerService.java"


# static fields
.field static final ACCESS_PERSONAL_APPS:Ljava/lang/String; = "accessPersonalApps"

.field static final GENERAL_INFO:Ljava/lang/String; = "general_info"

.field static final MANAGE_BBC_APP_INFO:Ljava/lang/String; = "manage_bbc_app_info"

.field static final NFC_APP:Ljava/lang/String; = "com.android.nfc"

.field static final PACKAGE_UID_INFO:Ljava/lang/String; = "packageUidInfo"

.field static final PRINT_BBC_APP_INFO:Ljava/lang/String; = "print_bbc_app_info"

.field static final TAG:Ljava/lang/String; = "BBCManagerService"

.field static mBbcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 77
    const/4 v6, 0x0

    .line 79
    .local v6, "ret":Landroid/os/Bundle;
    const-string/jumbo v8, "packageName"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "bbcApp":Ljava/lang/String;
    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 82
    .local v7, "uid":I
    if-eqz v1, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    const-string/jumbo v8, "accessPersonalApps"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 87
    .local v3, "new_accessPersonalApps":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 88
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    :goto_1
    if-lez v7, :cond_0

    .line 105
    const/4 v5, 0x0

    .line 107
    .local v5, "packageUidInfo":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 108
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v5, "packageUidInfo":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v8, "general_info"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 121
    .local v4, "new_options":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 123
    .local v2, "general_info":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 124
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "general_info":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v2, "general_info":Landroid/os/Bundle;
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_3
    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v2    # "general_info":Landroid/os/Bundle;
    .end local v3    # "new_accessPersonalApps":Landroid/os/Bundle;
    .end local v4    # "new_options":Landroid/os/Bundle;
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "ret":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v6, "ret":Landroid/os/Bundle;
    const-string/jumbo v8, "result"

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    return-object v6

    .line 91
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    .restart local v3    # "new_accessPersonalApps":Landroid/os/Bundle;
    .local v6, "ret":Landroid/os/Bundle;
    :cond_2
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "accessPersonalApps"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .local v5, "packageUidInfo":Landroid/os/Bundle;
    :cond_4
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "packageUidInfo"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;

    .local v5, "packageUidInfo":Landroid/os/Bundle;
    goto :goto_2

    .line 127
    .end local v5    # "packageUidInfo":Landroid/os/Bundle;
    .local v2, "general_info":Landroid/os/Bundle;
    .restart local v4    # "new_options":Landroid/os/Bundle;
    :cond_5
    sget-object v8, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v9, "general_info"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "general_info":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .local v2, "general_info":Landroid/os/Bundle;
    goto :goto_3
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 465
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 466
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "h":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 468
    .local v2, "l":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 471
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 474
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "l":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v14, "package"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    .line 413
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v6, 0x40

    .line 414
    .local v6, "flags":I
    const/4 v9, 0x0

    .line 416
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v6, v14}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 422
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_0

    .line 423
    const/4 v14, 0x0

    return-object v14

    .line 417
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find pkg info"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    const/4 v14, 0x0

    return-object v14

    .line 425
    .end local v1    # "e":Ljava/lang/Exception;
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 426
    .local v13, "signatures":[Landroid/content/pm/Signature;
    if-nez v13, :cond_1

    .line 427
    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find signatures"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v14, 0x0

    return-object v14

    .line 431
    :cond_1
    const/4 v11, 0x0

    .line 433
    .local v11, "pubKey":Ljava/security/PublicKey;
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 440
    .end local v11    # "pubKey":Ljava/security/PublicKey;
    :goto_0
    if-nez v11, :cond_2

    .line 441
    const-string/jumbo v14, "BBCManagerService"

    const-string/jumbo v15, "Cannot find public key"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v14, 0x0

    return-object v14

    .line 436
    .restart local v11    # "pubKey":Ljava/security/PublicKey;
    :catch_1
    move-exception v8

    .line 437
    .local v8, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 435
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v11    # "pubKey":Ljava/security/PublicKey;
    :cond_2
    invoke-interface {v11}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 447
    .local v4, "endcodedPubKey":[B
    const/4 v5, 0x0

    .line 450
    .local v5, "finalResult":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v14, "SHA-256"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 451
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v7, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    .line 452
    .local v12, "sha256Result":[B
    invoke-static {v12}, Lcom/android/server/BBCManagerService;->byte2HexFormatted([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 459
    .end local v5    # "finalResult":Ljava/lang/String;
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v12    # "sha256Result":[B
    :goto_1
    const-string/jumbo v14, "BBCManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sha256 Result ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v5

    .line 455
    .restart local v5    # "finalResult":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 456
    .restart local v8    # "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 453
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v3

    .line 454
    .local v3, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public static handleExchangeDataBBC(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, "ret":Landroid/os/Bundle;
    if-nez p2, :cond_0

    .line 244
    return-object v3

    .line 247
    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "BBCManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ExchangeDataBBC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    const-string/jumbo v3, "manage_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    const-string/jumbo v3, "add"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-static {p2}, Lcom/android/server/BBCManagerService;->add_bbc_info(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 266
    .end local v2    # "ret":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object v2

    .line 255
    .restart local v2    # "ret":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v3, "remove"

    const-string/jumbo v4, "type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    const-string/jumbo v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BBCManagerService;->remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 259
    .local v2, "ret":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v3, "print_bbc_app_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-static {}, Lcom/android/server/BBCManagerService;->printBbcInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "caller_uid"    # I
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 270
    const/4 v3, 0x0

    .line 272
    .local v3, "ret":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    return v7

    .line 277
    :cond_0
    :try_start_0
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v6, "accessPersonalApps"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 279
    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    if-nez p0, :cond_1

    .line 280
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v6, "packageUidInfo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 282
    .local v4, "uids":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    return v7

    .line 291
    .end local v4    # "uids":Landroid/os/Bundle;
    :cond_1
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    .line 292
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 291
    if-eqz v5, :cond_6

    .line 293
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 295
    .local v1, "apps":Landroid/os/Bundle;
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 296
    const/4 v3, 0x1

    .line 298
    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/BBCManagerService;->verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 298
    if-nez v5, :cond_4

    .line 300
    :cond_3
    const-string/jumbo v5, "*"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 298
    if-eqz v5, :cond_5

    .line 301
    :cond_4
    const/4 v3, 0x1

    .line 303
    :cond_5
    const-string/jumbo v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAccessPersonalApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v1    # "apps":Landroid/os/Bundle;
    :cond_6
    :goto_0
    return v3

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isActiveBbcContainerApp(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 187
    sget-object v1, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v2, "packageUidInfo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 188
    .local v0, "uids":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    return v1

    .line 193
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isActiveBbcContainerApp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 320
    .local v2, "ret":Z
    sget-object v3, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "general_info"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 322
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, "app_info":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "knoxcontainer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    const/4 v2, 0x1

    .line 329
    .end local v0    # "app_info":Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method public static isActiveBbcPersonalApp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 339
    .local v2, "ret":Z
    sget-object v3, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v4, "general_info"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 341
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, "app_info":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "knoxcontainer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    const/4 v2, 0x1

    .line 348
    .end local v0    # "app_info":Landroid/os/Bundle;
    :cond_0
    return v2
.end method

.method public static needToForwardBBC(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bbcId"    # I

    .prologue
    const/4 v6, -0x1

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/android/server/BBCManagerService;->isActiveBbcContainerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const-string/jumbo v4, "com.android.nfc"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-static {p1, v4, p0}, Lcom/android/server/BBCManagerService;->isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    :cond_0
    return p3

    .line 55
    :cond_1
    const-string/jumbo v4, "package"

    .line 54
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 58
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v4, 0x80

    const/4 v5, 0x0

    .line 57
    invoke-virtual {v2, p0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 59
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 61
    .local v3, "systemAppMask":I
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_3

    .line 62
    return p2

    .line 67
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "systemAppMask":I
    :cond_2
    return p2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    return p2

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v3    # "systemAppMask":I
    :cond_3
    return v6
.end method

.method public static printBbcInformation()V
    .locals 10

    .prologue
    .line 199
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_gerneral_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "general_info"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 201
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 205
    .local v2, "general_info":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key2$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    .local v5, "key2":Ljava/lang/String;
    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v2    # "general_info":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "key2":Ljava/lang/String;
    .end local v6    # "key2$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_gerneral_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_UID_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "packageUidInfo"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 217
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    .restart local v3    # "key":Ljava/lang/String;
    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " val : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_UID_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_accessPersonalApps_info START"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v7, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v8, "accessPersonalApps"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 227
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .restart local v3    # "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 230
    .local v0, "accesssPersonalApps":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "key2$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 232
    .restart local v5    # "key2":Ljava/lang/String;
    const-string/jumbo v7, "BBCManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    .end local v0    # "accesssPersonalApps":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "key2":Ljava/lang/String;
    .end local v6    # "key2$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v7, "BBCManagerService"

    const-string/jumbo v8, "BBC_accessPersonalApps_info END"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private static remove_bbc_info(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 149
    return-object v4

    .line 153
    :cond_0
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "accessPersonalApps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 161
    :cond_1
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "packageUidInfo"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 162
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uid$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "uid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 172
    .end local v2    # "uid":Ljava/lang/String;
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    :cond_3
    sget-object v4, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string/jumbo v5, "general_info"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 173
    .restart local v0    # "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 179
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v1, "ret":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    return-object v1
.end method

.method public static startActivityBBCAppLockFromRecents(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 353
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    .line 354
    .local v0, "isBBCContainer":Z
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/android/server/BBCManagerService;->isActiveBbcContainerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const-string/jumbo v2, "TimeToLive"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 367
    :goto_0
    return v5

    .line 357
    :cond_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_2

    .line 364
    :cond_1
    const-string/jumbo v2, "BBCManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityBBCAppLockFromRecents fail, isBBCContainer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    const-string/jumbo v4, ", packageName: "

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_2
    invoke-static {p3}, Lcom/android/server/BBCManagerService;->isActiveBbcPersonalApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const-string/jumbo v2, "com.samsung.android.bbc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 359
    .local v1, "pi":Landroid/app/PendingIntent;
    if-eqz v1, :cond_3

    .line 360
    const-string/jumbo v2, "com.samsung.android.bbc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 362
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static verifyPublicKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 371
    const-string/jumbo v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parameter ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "*"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    :cond_0
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "public key is null. All pkg is granted"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v9

    .line 380
    :cond_1
    :try_start_0
    const-string/jumbo v5, "package"

    .line 379
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 382
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    const/16 v5, 0x80

    .line 383
    const/4 v6, 0x0

    .line 382
    invoke-virtual {v2, p0, v5, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 384
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x81

    .line 386
    .local v3, "systemAppMask":I
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_2

    .line 387
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "System app. Do not need to verify public key. Return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    return v9

    .line 390
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v3    # "systemAppMask":I
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "Exception has occured while verifying public key"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/android/server/BBCManagerService;->getSHA256HexFormatOfPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "target":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 398
    :cond_3
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "target is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v8

    .line 402
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 403
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "publicKey is verified"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v9

    .line 407
    :cond_5
    const-string/jumbo v5, "BBCManagerService"

    const-string/jumbo v6, "publicKey is not matched"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v8
.end method
