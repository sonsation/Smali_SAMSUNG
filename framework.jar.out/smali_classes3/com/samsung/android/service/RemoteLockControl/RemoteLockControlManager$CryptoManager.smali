.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CryptoManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ecryptWithAES256CBC([B[B[B)[B
    .locals 7
    .param p1, "plaintext"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1393
    const/4 v1, 0x0

    .line 1395
    .local v1, "ciphertext":[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1396
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1397
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1398
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1407
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ciphertext":[B
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v1

    .line 1402
    .restart local v1    # "ciphertext":[B
    :catch_0
    move-exception v2

    .line 1403
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1404
    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const-string/jumbo v5, "ecryptWithAES256CBC"

    const/4 v6, -0x8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public ecryptWithServerPubKey([B[B)[B
    .locals 10
    .param p1, "plaintext"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1368
    const/4 v3, 0x0

    .line 1370
    .local v3, "ciphertext":[B
    :try_start_0
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1371
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1372
    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1373
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 1375
    .local v6, "key":Ljava/security/PublicKey;
    const-string/jumbo v7, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1376
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1377
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1386
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ciphertext":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "key":Ljava/security/PublicKey;
    :goto_0
    return-object v3

    .line 1381
    .restart local v3    # "ciphertext":[B
    :catch_0
    move-exception v4

    .line 1382
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1383
    iget-object v7, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const-string/jumbo v8, "ecryptWithServerPubKey"

    const/4 v9, -0x8

    invoke-static {v7, v9, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getRandom([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 1449
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1450
    .local v0, "srand":Ljava/security/SecureRandom;
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1447
    return-void
.end method

.method public hmacSha256([B[B)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1412
    const/4 v3, 0x0

    .line 1413
    .local v3, "result":[B
    const-string/jumbo v0, "HmacSHA256"

    .line 1417
    .local v0, "HMAC_SHA256_ALGORITHM":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "HmacSHA256"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 1418
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1419
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1427
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "result":[B
    :goto_0
    return-object v3

    .line 1422
    .restart local v3    # "result":[B
    :catch_0
    move-exception v1

    .line 1423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1424
    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const-string/jumbo v5, "hmacSha256"

    const/4 v6, -0x8

    invoke-static {v4, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sha256(Ljava/lang/String;)[B
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1432
    const/4 v2, 0x0

    .line 1434
    .local v2, "output":[B
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1435
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1436
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1444
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "output":[B
    :goto_0
    return-object v2

    .line 1439
    .restart local v2    # "output":[B
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1441
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    const-string/jumbo v4, "sha256"

    const/4 v5, -0x8

    invoke-static {v3, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public verifyCertChain([B)Z
    .locals 2
    .param p1, "serverCert"    # [B

    .prologue
    .line 1357
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-get2()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1358
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x0

    return v0

    .line 1362
    :cond_0
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-get2()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->verifyCertificate([B)Z

    move-result v0

    return v0
.end method
