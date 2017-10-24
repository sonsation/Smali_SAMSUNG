.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final OCSP_SERVER:I = 0x3

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;-><init>()V

    .line 134
    const-string/jumbo v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 136
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 140
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 142
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 144
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 181
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 182
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 183
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 184
    .local v5, "vpnProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 185
    const-string/jumbo v6, "setup_wizard_has_run"

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 184
    if-eqz v6, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 189
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "p$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 190
    .local v3, "p":Lcom/android/internal/net/VpnProfile;
    const-string/jumbo v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 191
    const-string/jumbo v6, "VpnID"

    .line 190
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    iget-object v7, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    const-string/jumbo v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 193
    const-string/jumbo v6, "UsrName"

    .line 192
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    iget-object v7, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    :cond_2
    const-string/jumbo v6, "UsrPwd"

    .line 194
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 196
    const-string/jumbo v6, "UsrPwd"

    .line 195
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    iget-object v7, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    :cond_3
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 200
    const-string/jumbo v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 202
    :cond_4
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    const-string/jumbo v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 179
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cv$iterator":Ljava/util/Iterator;
    .end local v2    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "p$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1899
    const/4 v2, 0x0

    .line 1901
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1902
    const-string/jumbo v4, "vpnAlwaysOnProfile"

    .line 1901
    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1903
    .local v1, "currentProfile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1904
    const-string/jumbo v4, "vpnAlwaysOnOwner"

    .line 1903
    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, "currentOwner":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1912
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1907
    :cond_1
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1909
    const/4 v3, 0x0

    return v3
.end method

.method private checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    .locals 6
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1516
    if-lez p2, :cond_1

    .line 1517
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1518
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1520
    iget-object v4, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1521
    const/4 v3, 0x1

    return v3

    .line 1519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1526
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    return v5

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v5
.end method

.method private decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 216
    invoke-static/range {p1 .. p2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v11

    .line 217
    .local v11, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v11, :cond_0

    .line 218
    const/4 v14, 0x0

    return-object v14

    .line 221
    :cond_0
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 283
    const-string/jumbo v14, "VpnPolicy"

    const-string/jumbo v15, "This profile was not encrypted !"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_0
    return-object v11

    .line 222
    :cond_2
    const/4 v12, 0x0

    .line 225
    .local v12, "secretkey":Ljava/security/Key;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v15, "USRSKEY_VpnSecretKey"

    const/16 v16, -0x1

    .line 224
    invoke-static/range {v14 .. v16}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 230
    .end local v12    # "secretkey":Ljava/security/Key;
    :goto_1
    if-eqz v12, :cond_1

    .line 233
    :try_start_1
    const-string/jumbo v14, "AES/CBC/PKCS7Padding"

    .line 232
    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 236
    .local v1, "cipher":Ljavax/crypto/Cipher;
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, "ivBase64":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    .end local v7    # "ivBase64":Ljava/lang/String;
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/String;-><init>([B)V

    .line 239
    .local v7, "ivBase64":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v10, v14, 0x2

    .line 240
    .local v10, "len":I
    new-array v8, v10, [B

    .line 241
    .local v8, "ivByte":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v10, :cond_3

    .line 242
    mul-int/lit8 v14, v6, 0x2

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->byteValue()B

    move-result v14

    aput-byte v14, v8, v6
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 226
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "i":I
    .end local v7    # "ivBase64":Ljava/lang/String;
    .end local v8    # "ivByte":[B
    .end local v10    # "len":I
    .restart local v12    # "secretkey":Ljava/security/Key;
    :catch_0
    move-exception v5

    .line 227
    .local v5, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v5}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v5    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v12    # "secretkey":Ljava/security/Key;
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "i":I
    .restart local v7    # "ivBase64":Ljava/lang/String;
    .restart local v8    # "ivByte":[B
    .restart local v10    # "len":I
    :cond_3
    :try_start_2
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 245
    .local v9, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v14, 0x2

    invoke-virtual {v1, v14, v12, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 247
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    .line 248
    .local v13, "targetData":[B
    invoke-virtual {v1, v13}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 250
    .local v3, "decrypted":[B
    const/4 v14, 0x2

    invoke-static {v3, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 251
    .local v2, "decodeData":[B
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 252
    const/4 v6, 0x0

    :goto_3
    array-length v14, v2

    if-ge v6, v14, :cond_4

    .line 253
    const/4 v14, 0x0

    aput-byte v14, v2, v6

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 256
    .end local v2    # "decodeData":[B
    .end local v3    # "decrypted":[B
    .end local v6    # "i":I
    .end local v7    # "ivBase64":Ljava/lang/String;
    .end local v8    # "ivByte":[B
    .end local v9    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v13    # "targetData":[B
    :cond_4
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 257
    const/4 v7, 0x0

    .line 258
    .local v7, "ivBase64":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    .end local v7    # "ivBase64":Ljava/lang/String;
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/String;-><init>([B)V

    .line 259
    .local v7, "ivBase64":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v10, v14, 0x2

    .line 260
    .restart local v10    # "len":I
    new-array v8, v10, [B

    .line 261
    .restart local v8    # "ivByte":[B
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v10, :cond_5

    .line 262
    mul-int/lit8 v14, v6, 0x2

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->byteValue()B

    move-result v14

    aput-byte v14, v8, v6

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 264
    :cond_5
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 265
    .restart local v9    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v14, 0x2

    invoke-virtual {v1, v14, v12, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 267
    iget-object v14, v11, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    .line 268
    .restart local v13    # "targetData":[B
    invoke-virtual {v1, v13}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 270
    .restart local v3    # "decrypted":[B
    const/4 v14, 0x2

    invoke-static {v3, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 271
    .restart local v2    # "decodeData":[B
    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 272
    const/4 v6, 0x0

    :goto_5
    array-length v14, v2

    if-ge v6, v14, :cond_1

    .line 273
    const/4 v14, 0x0

    aput-byte v14, v2, v6
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 278
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decodeData":[B
    .end local v3    # "decrypted":[B
    .end local v6    # "i":I
    .end local v7    # "ivBase64":Ljava/lang/String;
    .end local v8    # "ivByte":[B
    .end local v9    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v13    # "targetData":[B
    :catch_1
    move-exception v4

    .line 279
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private declared-synchronized disconnect()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 1677
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 1678
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 1681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1682
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string/jumbo v4, "[Legacy VPN]"

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v1, v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1683
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "token":J
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1688
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_VPN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 167
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_VPN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 166
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method private enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_VPN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 161
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_VPN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 160
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 149
    const-string/jumbo v1, "enterprise_policy_new"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1941
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1942
    :cond_0
    return-object v6

    .line 1945
    :cond_1
    const/4 v4, 0x0

    .line 1947
    .local v4, "result":Lcom/android/internal/net/VpnProfile;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 1948
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1949
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1950
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 1951
    move-object v4, v1

    .line 1962
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profile$iterator":Ljava/util/Iterator;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v4    # "result":Lcom/android/internal/net/VpnProfile;
    :cond_3
    :goto_0
    return-object v4

    .line 1957
    .restart local v4    # "result":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "VpnPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in getProfileByName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1959
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1958
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 1495
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1496
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1498
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1499
    return v1

    .line 1497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1503
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1506
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1330
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 1331
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1332
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 1333
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1334
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 1359
    :cond_1
    :goto_0
    return-object v3

    .line 1337
    :pswitch_0
    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 1338
    .local v0, "lDnsServer":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1342
    .end local v0    # "lDnsServer":Ljava/lang/String;
    :pswitch_1
    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_1

    aget-object v2, v8, v7

    .line 1343
    .local v2, "lSearchDomain":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1347
    .end local v2    # "lSearchDomain":Ljava/lang/String;
    :pswitch_2
    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_3
    if-ge v7, v9, :cond_1

    aget-object v1, v8, v7

    .line 1348
    .local v1, "lRoutes":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1356
    .end local v1    # "lRoutes":Ljava/lang/String;
    :pswitch_3
    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1364
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "p$iterator":Ljava/util/Iterator;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    return-object v9

    .line 1335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1889
    const/4 v0, 0x1

    return v0
.end method

.method private removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1601
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 1602
    const-string/jumbo v6, "VpnID"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 1604
    .local v0, "Column":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 1605
    iget-object v6, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    .line 1607
    .local v1, "Value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1608
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1612
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1615
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.VPN_NEW_PROFILE_INTERNAL"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1616
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1618
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    .end local v0    # "Column":[Ljava/lang/String;
    .end local v1    # "Value":[Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v2

    .line 1621
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "index"    # I
    .param p3, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1629
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1630
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1631
    invoke-virtual {v1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1632
    .local v0, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 1633
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    .line 1627
    .end local v0    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1045
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v7, "VPN_"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    .line 1047
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 1048
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1049
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .line 1050
    .local v4, "value":[B
    if-eqz v4, :cond_0

    .line 1051
    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 1052
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 1053
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "value":[B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1059
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1921
    const/4 v1, 0x0

    .line 1923
    .local v1, "userId":I
    if-eqz p2, :cond_0

    .line 1924
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1925
    const-string/jumbo v3, "vpnAlwaysOnProfile"

    .line 1924
    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1927
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1928
    const-string/jumbo v3, "vpnAlwaysOnOwner"

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1927
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1931
    return v0

    .line 1923
    .end local v0    # "ret":Z
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1562
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "VPN_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1566
    .local v8, "token":J
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1569
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v12, "com.samsung.android.knox.intent.action.VPN_NEW_PROFILE_INTERNAL"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1570
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1572
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1575
    .local v7, "uid":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1576
    .local v10, "username":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1577
    .local v6, "pwd":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    .line 1578
    const-string/jumbo v12, "adminUid"

    const/4 v13, 0x0

    aput-object v12, v2, v13

    const-string/jumbo v12, "VpnID"

    const/4 v13, 0x1

    aput-object v12, v2, v13

    .line 1580
    .local v2, "columns":[Ljava/lang/String;
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    .line 1581
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 1583
    .local v11, "values":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1584
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1585
    const-string/jumbo v12, "VpnID"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string/jumbo v12, "UsrName"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v12, "UsrPwd"

    invoke-virtual {v3, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "VPN"

    invoke-virtual {v12, v13, v2, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    return v12

    .line 1590
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pwd":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "token":J
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1591
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1593
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v12, 0x0

    return v12
.end method

.method private setProfileId()J
    .locals 8

    .prologue
    .line 1539
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1540
    .local v4, "millis":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v6, "VPN_"

    invoke-virtual {v3, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1543
    aget-object v3, v2, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1544
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1545
    const/4 v1, 0x0

    .line 1542
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    .end local v1    # "i":I
    :cond_1
    return-wide v4

    .line 1550
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v4    # "millis":J
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1553
    const-wide/16 v6, -0x1

    return-wide v6
.end method

.method private setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p3, :cond_1

    .line 1270
    :cond_0
    return v10

    .line 1273
    :cond_1
    const-string/jumbo v1, ""

    .line 1274
    .local v1, "endListAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v2, "endListAddressBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listAddresses$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1276
    .local v4, "listAddresses":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1277
    return v10

    .line 1279
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string/jumbo v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1282
    .end local v4    # "listAddresses":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_4

    .line 1284
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1286
    :cond_4
    if-nez p4, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-direct {p0, v1, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1289
    :cond_5
    const/4 v8, 0x2

    if-ne p4, v8, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1292
    :cond_6
    const/4 v8, 0x3

    if-ne p4, v8, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1296
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 1297
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1298
    .local v7, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 1299
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    .line 1300
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_b

    .line 1301
    packed-switch p4, :pswitch_data_0

    .line 1316
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    return v9

    .line 1287
    .end local v3    # "index":I
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v7    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_8
    return v10

    .line 1290
    :cond_9
    return v10

    .line 1293
    :cond_a
    return v10

    .line 1303
    .restart local v3    # "index":I
    .restart local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v7    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :pswitch_0
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_1

    .line 1306
    :pswitch_1
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_1

    .line 1309
    :pswitch_2
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_1

    .line 1312
    :pswitch_3
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    goto :goto_1

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "VpnPolicy"

    const-string/jumbo v9, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    return v10

    .line 1324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_b
    return v10

    .line 1301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 1668
    :try_start_0
    const-string/jumbo v1, "connectivity"

    .line 1667
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1665
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 1369
    :try_start_0
    const-string/jumbo v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v0, v7, v6

    .line 1370
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1369
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    const/16 v5, 0x20

    .line 1375
    .local v5, "prefixLength":I
    if-eqz p2, :cond_2

    .line 1376
    const-string/jumbo v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1377
    .local v4, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v4, v9

    .line 1378
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1380
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1381
    .local v1, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    .line 1382
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    .line 1381
    or-int v3, v9, v10

    .line 1383
    .local v3, "integer":I
    array-length v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-gez v5, :cond_4

    .line 1385
    :cond_3
    :goto_1
    const/4 v6, 0x0

    return v6

    .line 1383
    :cond_4
    const/16 v9, 0x20

    if-gt v5, v9, :cond_3

    .line 1384
    const/16 v9, 0x20

    if-ge v5, v9, :cond_0

    shl-int v9, v3, v5

    if-eqz v9, :cond_0

    goto :goto_1

    .line 1388
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v3    # "integer":I
    .end local v5    # "prefixLength":I
    :catch_0
    move-exception v2

    .line 1389
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 1391
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    return v6
.end method

.method private validateUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2027
    const/4 v2, 0x0

    .line 2028
    .local v2, "urlValid":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2030
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .local v1, "u":Ljava/net/URL;
    const/4 v2, 0x1

    .line 2039
    .end local v1    # "u":Ljava/net/URL;
    :goto_0
    return v2

    .line 2037
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 2032
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1438
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1439
    .local v2, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1440
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1441
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1442
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1443
    .local v3, "state":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v5, "PPTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 1444
    const-string/jumbo v5, "CONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1443
    if-eqz v5, :cond_0

    .line 1445
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_0

    .line 1450
    .end local v0    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "profile$iterator":Ljava/util/Iterator;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1451
    const-string/jumbo v7, "RESTRICTION"

    .line 1452
    const-string/jumbo v8, "allowOnlySecureVPN"

    .line 1450
    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    return v5
.end method

.method public allowUserAddProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1854
    const-string/jumbo v0, "VpnPolicy"

    const-string/jumbo v1, "allowUserAddProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1856
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1857
    const-string/jumbo v2, "VPN"

    .line 1858
    const-string/jumbo v3, "allowUserAddProfiles"

    .line 1856
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserChangeProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1819
    const-string/jumbo v0, "VpnPolicy"

    const-string/jumbo v1, "allowUserChangeProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1821
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1822
    const-string/jumbo v2, "VPN"

    .line 1823
    const-string/jumbo v3, "allowUserChangeProfiles"

    .line 1821
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1783
    const-string/jumbo v0, "VpnPolicy"

    const-string/jumbo v1, "allowUserSetAlwaysOn"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1785
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1786
    const-string/jumbo v2, "VPN"

    .line 1787
    const-string/jumbo v3, "allowUserSetAlwaysOn"

    .line 1785
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "racoon"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1462
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    const-string/jumbo v1, "VpnPolicy"

    const-string/jumbo v2, " checkRacoonSecurity calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    return v3

    .line 1466
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1467
    const/4 v0, 0x1

    .line 1468
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1469
    if-eqz p2, :cond_4

    array-length v1, p2

    if-le v1, v3, :cond_4

    .line 1470
    aget-object v1, p2, v4

    if-eqz v1, :cond_1

    aget-object v1, p2, v4

    const-string/jumbo v2, "udprsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p2, v4

    const-string/jumbo v2, "hybridrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p2, v4

    const-string/jumbo v2, "udppsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1471
    :cond_1
    aget-object v1, p2, v3

    if-eqz v1, :cond_4

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthrsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p2, v3

    const-string/jumbo v2, "xauthpsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1473
    aget-object v1, p2, v3

    const-string/jumbo v2, "ikev2psk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1471
    if-nez v1, :cond_2

    .line 1474
    aget-object v1, p2, v3

    const-string/jumbo v2, "ikev2rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1469
    if-eqz v1, :cond_4

    .line 1476
    :cond_2
    const/4 v0, 0x1

    .line 1480
    :goto_0
    if-nez v0, :cond_3

    .line 1481
    const v1, 0x10409d4

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1485
    :cond_3
    return v0

    .line 1478
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized createProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "adminProfile"    # Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    .line 1067
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 1070
    if-nez p2, :cond_0

    monitor-exit p0

    .line 1071
    return v8

    .line 1073
    :cond_0
    :try_start_1
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1074
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1073
    if-nez v7, :cond_1

    .line 1075
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    const/16 v10, 0x20

    if-le v7, v10, :cond_2

    :cond_1
    monitor-exit p0

    .line 1078
    return v8

    .line 1076
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    .line 1073
    if-nez v7, :cond_1

    .line 1077
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1081
    new-instance v6, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v6, "vpnProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_14

    .line 1083
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1084
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 1085
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 1087
    const-string/jumbo v0, ""

    .line 1088
    .local v0, "addresses":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v1, "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listAddresses$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    .local v4, "listAddresses":Ljava/lang/String;
    if-nez v4, :cond_4

    monitor-exit p0

    .line 1091
    return v8

    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "listAddresses":Ljava/lang/String;
    .end local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    :cond_3
    move v7, v9

    .line 1085
    goto :goto_0

    .line 1093
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v4    # "listAddresses":Ljava/lang/String;
    .restart local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1228
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "listAddresses":Ljava/lang/String;
    .end local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    .end local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v2

    .line 1229
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v7, "VpnPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createProfile exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1230
    return v8

    .line 1096
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    .restart local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6

    .line 1098
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1100
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1103
    :cond_7
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 1105
    const-string/jumbo v0, ""

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1108
    .restart local v4    # "listAddresses":Ljava/lang/String;
    if-nez v4, :cond_9

    monitor-exit p0

    .line 1109
    return v8

    .end local v4    # "listAddresses":Ljava/lang/String;
    :cond_8
    monitor-exit p0

    .line 1101
    return v8

    .line 1111
    .restart local v4    # "listAddresses":Ljava/lang/String;
    :cond_9
    :try_start_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "listAddresses":Ljava/lang/String;
    .end local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    .end local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1114
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    .restart local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_b

    .line 1116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1118
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1121
    :cond_c
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 1123
    const-string/jumbo v0, ""

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1125
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1126
    .restart local v4    # "listAddresses":Ljava/lang/String;
    if-nez v4, :cond_e

    monitor-exit p0

    .line 1127
    return v8

    .end local v4    # "listAddresses":Ljava/lang/String;
    :cond_d
    monitor-exit p0

    .line 1119
    return v8

    .line 1129
    .restart local v4    # "listAddresses":Ljava/lang/String;
    :cond_e
    :try_start_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1132
    .end local v4    # "listAddresses":Ljava/lang/String;
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_10

    .line 1134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1136
    :cond_10
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1138
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 1139
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 1141
    :cond_11
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v7, :cond_12

    .line 1142
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1145
    :cond_12
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "PPTP"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1146
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1147
    iget-boolean v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->enablePPTPEncryption:Z

    iput-boolean v7, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 1223
    :cond_13
    :goto_4
    iget-object v7, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 1224
    .local v3, "index":I
    if-gez v3, :cond_14

    invoke-direct {p0, v6, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v7

    if-eqz v7, :cond_26

    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "index":I
    .end local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    :cond_14
    monitor-exit p0

    .line 1232
    return v8

    .line 1148
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "listAddresses$iterator":Ljava/util/Iterator;
    :cond_15
    :try_start_9
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "L2TP_IPSEC_PSK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1149
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v7

    if-eqz v7, :cond_16

    monitor-exit p0

    .line 1150
    return v8

    .line 1152
    :cond_16
    const/4 v7, 0x1

    :try_start_a
    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1153
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1154
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_4

    .line 1156
    :cond_17
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "L2TP_IPSEC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1157
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v7

    if-eqz v7, :cond_18

    monitor-exit p0

    .line 1158
    return v8

    .line 1160
    :cond_18
    :try_start_b
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1162
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 1163
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1164
    :cond_19
    const/4 v7, 0x2

    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_4

    .line 1168
    :cond_1a
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "IPSEC_HYBRID_RSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1169
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1170
    const/4 v7, 0x3

    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_4

    .line 1171
    :cond_1b
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "IPSEC_XAUTH_PSK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1172
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v7

    if-eqz v7, :cond_1c

    monitor-exit p0

    .line 1173
    return v8

    .line 1175
    :cond_1c
    const/4 v7, 0x4

    :try_start_c
    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1176
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1177
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_4

    .line 1179
    :cond_1d
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "IPSEC_XAUTH_RSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1180
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v7

    if-eqz v7, :cond_1e

    monitor-exit p0

    .line 1181
    return v8

    .line 1183
    :cond_1e
    const/4 v7, 0x5

    :try_start_d
    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1184
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1185
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto/16 :goto_4

    .line 1190
    :cond_1f
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "IPSEC_IKEV2_PSK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1189
    if-eqz v7, :cond_21

    .line 1191
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v7

    if-eqz v7, :cond_20

    monitor-exit p0

    .line 1192
    return v8

    .line 1194
    :cond_20
    const/4 v7, 0x6

    :try_start_e
    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1195
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1196
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_4

    .line 1199
    :cond_21
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string/jumbo v9, "IPSEC_IKEV2_RSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1198
    if-eqz v7, :cond_25

    .line 1200
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 1201
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v7

    .line 1200
    if-eqz v7, :cond_23

    :cond_22
    monitor-exit p0

    .line 1202
    return v8

    .line 1204
    :cond_23
    const/4 v7, 0x7

    :try_start_f
    iput v7, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1205
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecUserCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1206
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ipsecCaCertificate:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1210
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    if-eqz v7, :cond_13

    .line 1211
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1212
    iget-object v7, p2, Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    :cond_24
    monitor-exit p0

    .line 1214
    return v8

    :cond_25
    monitor-exit p0

    .line 1220
    return v8

    .line 1225
    .restart local v3    # "index":I
    :cond_26
    :try_start_10
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v7

    monitor-exit p0

    return v7
.end method

.method public declared-synchronized deleteProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    .line 798
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 801
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 802
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 803
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 805
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 807
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 808
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 810
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 812
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 813
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 815
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 817
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    const/4 v6, 0x1

    monitor-exit p0

    return v6

    .line 804
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "token":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v1    # "i":I
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit p0

    .line 827
    return v8

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .locals 0

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1699
    return-void
.end method

.method public getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1754
    const-string/jumbo v6, "VpnPolicy"

    const-string/jumbo v7, "getAlwaysOnProfile"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const/4 v5, 0x0

    .line 1757
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v7, "LOCKDOWN_VPN"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 1759
    .local v0, "lockdownKey":[B
    if-eqz v0, :cond_1

    .line 1760
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1761
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1762
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1763
    .local v1, "lockdownKeyStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1764
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1765
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1772
    .end local v1    # "lockdownKeyStr":Ljava/lang/String;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profile$iterator":Ljava/util/Iterator;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public declared-synchronized getCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 754
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "certificate":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p0

    .line 757
    return-object v5

    .line 759
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 760
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 761
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 762
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 763
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 767
    return-object v5

    .end local v0    # "certificate":Ljava/lang/String;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1263
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 541
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 542
    return-object v4

    .line 544
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 545
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 546
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 547
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 552
    return-object v4

    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1419
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1420
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1421
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1422
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1423
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1424
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    return-object v3

    .line 1429
    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    return-object v4
.end method

.method public declared-synchronized getL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 890
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 891
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 892
    return-object v3

    .line 894
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 895
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 897
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 896
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    .line 903
    return-object v3

    .end local v1    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 502
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 503
    if-nez p2, :cond_0

    monitor-exit p0

    .line 504
    return-object v4

    .line 506
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 508
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 509
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 514
    return-object v4

    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1999
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2000
    .local v1, "ocspServerUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2001
    .local v0, "ocspServerUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2004
    .end local v0    # "ocspServerUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2002
    .restart local v0    # "ocspServerUrl":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ocspServerUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .local v0, "ocspServerUrl":Ljava/lang/String;
    goto :goto_0
.end method

.method public declared-synchronized getPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 710
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 711
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 713
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 714
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 715
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    monitor-exit p0

    .line 721
    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 522
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 523
    return-object v4

    .line 525
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 526
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 527
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 528
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 533
    return-object v4

    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 560
    if-nez p2, :cond_0

    monitor-exit p0

    .line 561
    return-object v10

    .line 564
    :cond_0
    const/4 v1, 0x0

    .line 565
    .local v1, "found":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 566
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 567
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 568
    .local v3, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v8, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 569
    const/4 v1, 0x1

    .line 575
    .end local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v1, :cond_3

    monitor-exit p0

    .line 576
    return-object v10

    .line 579
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v8, :cond_4

    .line 580
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 582
    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v8, :cond_7

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 584
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 585
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v8, :cond_5

    .line 588
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v8, v8, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 591
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v8, v8, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v8, :pswitch_data_0

    .line 605
    const-string/jumbo v8, "IDLE"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v8

    .line 593
    :pswitch_0
    :try_start_3
    const-string/jumbo v8, "DISCONNECTED"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v8

    .line 595
    :pswitch_1
    :try_start_4
    const-string/jumbo v8, "INITIALIZING"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v8

    .line 597
    :pswitch_2
    :try_start_5
    const-string/jumbo v8, "CONNECTING"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v8

    .line 599
    :pswitch_3
    :try_start_6
    const-string/jumbo v8, "CONNECTED"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v8

    .line 601
    :pswitch_4
    :try_start_7
    const-string/jumbo v8, "TIMEOUT"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v8

    .line 603
    :pswitch_5
    :try_start_8
    const-string/jumbo v8, "FAILED"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v8

    .line 608
    :cond_6
    :try_start_9
    const-string/jumbo v8, "IDLE"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v8

    .line 611
    .end local v6    # "token":J
    :cond_7
    :try_start_a
    const-string/jumbo v8, "IDLE"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v8

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 614
    return-object v10

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "found":Z
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSupportedConnectionTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2009
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2011
    .local v0, "connectionTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "PPTP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2012
    const-string/jumbo v1, "L2TP_IPSEC_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2013
    const-string/jumbo v1, "L2TP_IPSEC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    const-string/jumbo v1, "IPSEC_HYBRID_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2015
    const-string/jumbo v1, "IPSEC_XAUTH_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    const-string/jumbo v1, "IPSEC_XAUTH_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    const-string/jumbo v1, "IPSEC_IKEV2_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2020
    const-string/jumbo v1, "IPSEC_IKEV2_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2022
    return-object v0
.end method

.method public declared-synchronized getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 462
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 463
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 464
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 465
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_0
    const-string/jumbo v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 470
    :pswitch_1
    :try_start_1
    const-string/jumbo v3, "L2TP_IPSEC_PSK"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 472
    :pswitch_2
    :try_start_2
    const-string/jumbo v3, "L2TP_IPSEC"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 474
    :pswitch_3
    :try_start_3
    const-string/jumbo v3, "IPSEC_XAUTH_PSK"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 476
    :pswitch_4
    :try_start_4
    const-string/jumbo v3, "IPSEC_XAUTH_RSA"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    .line 478
    :pswitch_5
    :try_start_5
    const-string/jumbo v3, "IPSEC_HYBRID_RSA"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 486
    :pswitch_6
    :try_start_6
    const-string/jumbo v3, "IPSEC_IKEV2_PSK"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 485
    return-object v3

    .line 489
    :pswitch_7
    :try_start_7
    const-string/jumbo v3, "IPSEC_IKEV2_RSA"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    .line 488
    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 495
    return-object v4

    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 834
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 835
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 836
    return-object v4

    .line 838
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 839
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 840
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 841
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 846
    return-object v4

    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 623
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 625
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 626
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 627
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    monitor-exit p0

    .line 633
    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserNameById(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 641
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 642
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "VPN"

    const-string/jumbo v2, "VpnID"

    .line 643
    const-string/jumbo v3, "UsrName"

    .line 642
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 660
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 661
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 663
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 664
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 665
    .local v0, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v0    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    monitor-exit p0

    .line 671
    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserPwdById(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 651
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 652
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "VPN"

    const-string/jumbo v2, "VpnID"

    .line 653
    const-string/jumbo v3, "UsrPwd"

    .line 652
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 1011
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1012
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 1014
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-nez v3, :cond_0

    .line 1015
    return-object v5

    .line 1018
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1019
    return-object v5

    .line 1022
    :cond_1
    const/4 v2, 0x0

    .line 1024
    .local v2, "position":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 1026
    .local v0, "VpnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1027
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 1028
    add-int/lit8 v2, v2, 0x1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    return-object v0
.end method

.method public isAdminProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 986
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 987
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "VPN"

    .line 988
    const-string/jumbo v5, "VpnID"

    .line 987
    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 989
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 990
    return v6

    .line 992
    :cond_0
    if-nez p2, :cond_1

    .line 993
    return v6

    .line 995
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "AdminVpnId$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 997
    .local v0, "AdminVpnId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1000
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1001
    const/4 v3, 0x1

    return v3

    .line 1004
    .end local v0    # "AdminVpnId":Ljava/lang/String;
    :cond_3
    return v6
.end method

.method public isL2TPSecretEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 910
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 911
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    return v3

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 915
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 917
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 919
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 916
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "i":I
    :cond_3
    return v3
.end method

.method public isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1456
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1457
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "RESTRICTION"

    .line 1458
    const-string/jumbo v2, "allowOnlySecureVPN"

    .line 1457
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1458
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 962
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    return v3

    .line 965
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 966
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 968
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 970
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 971
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    return v2

    .line 973
    :cond_1
    return v3

    .line 967
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v0    # "i":I
    :cond_3
    return v3
.end method

.method public isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1869
    const-string/jumbo v2, "VpnPolicy"

    const-string/jumbo v3, "isUserAddProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1871
    const-string/jumbo v3, "VPN"

    .line 1872
    const-string/jumbo v4, "allowUserAddProfiles"

    .line 1870
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1874
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 1876
    .local v0, "ret":Z
    :goto_0
    if-eqz p2, :cond_0

    if-eqz v0, :cond_2

    .line 1880
    :cond_0
    :goto_1
    return v0

    .line 1874
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 1877
    :cond_2
    const v2, 0x1040a0e

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_1
.end method

.method public isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1833
    const-string/jumbo v2, "VpnPolicy"

    const-string/jumbo v3, "isUserChangeProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1835
    const-string/jumbo v3, "VPN"

    .line 1836
    const-string/jumbo v4, "allowUserChangeProfiles"

    .line 1834
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1838
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 1840
    .local v0, "ret":Z
    :goto_0
    if-eqz p2, :cond_0

    if-eqz v0, :cond_2

    .line 1844
    :cond_0
    :goto_1
    return v0

    .line 1838
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 1841
    :cond_2
    const v2, 0x1040a0d

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_1
.end method

.method public isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1798
    const-string/jumbo v2, "VpnPolicy"

    const-string/jumbo v3, "isUserSetAlwaysOnAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1800
    const-string/jumbo v3, "VPN"

    .line 1801
    const-string/jumbo v4, "allowUserSetAlwaysOn"

    .line 1799
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1803
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 1805
    .local v0, "ret":Z
    :goto_0
    if-eqz p2, :cond_0

    if-eqz v0, :cond_2

    .line 1809
    :cond_0
    :goto_1
    return v0

    .line 1803
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 1806
    :cond_2
    const v2, 0x1040a0c

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 2053
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1967
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1975
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1978
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1973
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2050
    return-void
.end method

.method public setAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1714
    const-string/jumbo v4, "VpnPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAlwaysOnProfile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1717
    const/4 v1, 0x0

    .line 1718
    .local v1, "success":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1744
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return v1

    .line 1720
    .restart local v1    # "success":Z
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1722
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 1733
    .end local v1    # "success":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1735
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1738
    .local v1, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1739
    .local v2, "uid":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1740
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1725
    .end local v2    # "uid":J
    .local v1, "success":Z
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 1726
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1728
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, "LOCKDOWN_VPN"

    iget-object v6, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1729
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 1728
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_1
.end method

.method public declared-synchronized setCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 729
    const/4 v4, 0x0

    .line 730
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 731
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 747
    return v4

    .line 732
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 734
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 735
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 736
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 737
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 738
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    const/4 v4, 0x1

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    monitor-exit p0

    .line 743
    return v6

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1251
    .local p3, "searchDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1243
    .local p3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 932
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 933
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit p0

    .line 934
    return v6

    .line 937
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 938
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 939
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 940
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 941
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v5, :cond_1

    .line 942
    move-object v2, v3

    .line 943
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-boolean p3, v3, Lcom/android/internal/net/VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    :try_start_2
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 949
    return v6

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    monitor-exit p0

    .line 953
    return v6

    .end local v1    # "index":I
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1259
    .local p3, "forwardRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    monitor-exit p0

    .line 292
    return v10

    .line 294
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 295
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 298
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 299
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 300
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 301
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 302
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .end local v3    # "index":I
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    .line 322
    return v10

    .line 303
    .restart local v3    # "index":I
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v8

    invoke-direct {p0, p3, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 304
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 305
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 306
    const-string/jumbo v8, "adminUid"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string/jumbo v8, "VpnID"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "adminUid"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const-string/jumbo v8, "VpnID"

    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 309
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 312
    .local v7, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "VPN"

    invoke-virtual {v8, v9, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    monitor-exit p0

    return v8

    .line 318
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ipSecIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1395
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1396
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 1397
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1398
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1399
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1400
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1401
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1402
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 1404
    .local v1, "index":I
    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    const/4 v5, 0x1

    return v5

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "VpnPolicy"

    const-string/jumbo v6, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    return v7

    .line 1414
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    return v7
.end method

.method public declared-synchronized setL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 855
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 856
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 857
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 858
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 859
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 860
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 861
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 862
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_4

    .line 863
    move-object v2, v3

    .line 864
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 866
    :cond_0
    if-nez p3, :cond_2

    .line 867
    const-string/jumbo v5, ""

    iput-object v5, v3, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :goto_0
    :try_start_1
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 865
    :cond_1
    :try_start_2
    iput-object p4, v3, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    monitor-exit p0

    .line 869
    return v6

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_3
    monitor-exit p0

    .line 882
    return v6

    .restart local v1    # "index":I
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_4
    monitor-exit p0

    .line 878
    return v6
.end method

.method public declared-synchronized setName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 331
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 351
    return v7

    .line 332
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    .line 333
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 335
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 336
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 337
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 338
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 339
    move-object v2, v3

    .line 340
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 341
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 348
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ocspServerUrl"    # Ljava/lang/String;

    .prologue
    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1987
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1988
    .local v1, "result":Z
    if-nez p3, :cond_0

    .line 1989
    const-string/jumbo p3, ""

    .line 1992
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1993
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v1

    .line 1995
    .local v1, "result":Z
    return v1
.end method

.method public declared-synchronized setPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 680
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 681
    const/4 v5, 0x0

    .line 682
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_0

    .line 683
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 703
    return v5

    .line 686
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 688
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 689
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 690
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 691
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_2

    .line 692
    move-object v2, v3

    .line 693
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 694
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "index":I
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ret":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 358
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 360
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 377
    return v6

    .line 361
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 363
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 364
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 365
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 366
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 367
    move-object v2, v3

    .line 368
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 369
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 374
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 777
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 793
    return v4

    .line 778
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 780
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 781
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 782
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 783
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 784
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 787
    const/4 v4, 0x1

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    monitor-exit p0

    .line 789
    return v6

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 385
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 386
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 389
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 390
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 391
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 392
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 393
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_1

    .line 394
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 395
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 396
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 401
    :goto_0
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 402
    const-string/jumbo v7, "adminUid"

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string/jumbo v7, "VpnID"

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v7, "UsrName"

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 406
    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    const-string/jumbo v7, "VpnID"

    const/4 v8, 0x1

    aput-object v7, v0, v8

    .line 408
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 409
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 413
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "VPN"

    invoke-virtual {v7, v8, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    monitor-exit p0

    return v7

    .line 398
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 399
    const-string/jumbo v7, ""

    iput-object v7, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 417
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    .line 421
    return v9

    .end local v1    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setUserPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 429
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 431
    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 454
    return v10

    .line 432
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 433
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 434
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 435
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 436
    .local v5, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v4, 0x0

    .line 437
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    .line 438
    move-object v4, v5

    .line 439
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 440
    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Lcom/samsung/android/knox/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 441
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "UsrPwd"

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string/jumbo v8, "adminUid"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string/jumbo v8, "VpnID"

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "adminUid"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const-string/jumbo v8, "VpnID"

    const/4 v9, 0x1

    aput-object v8, v0, v9

    .line 446
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 447
    .local v7, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "VPN"

    invoke-virtual {v8, v9, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    monitor-exit p0

    return v8

    .line 451
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1644
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 2044
    return-void
.end method
