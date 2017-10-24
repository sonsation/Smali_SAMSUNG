.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMAKeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "getAliasListFromTimaKeystore with package"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p0, :cond_0

    const-string/jumbo v11, ""

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 234
    :cond_0
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "getAliasListFromTimaKeystore received empty/null packageName"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 269
    :cond_1
    :goto_0
    return-object v0

    .line 238
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v3

    .line 239
    .local v3, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, p0}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/sec/enterprise/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v10

    .line 243
    .local v10, "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v7, 0x0

    .line 246
    .local v7, "isWifiAliasesExist":Z
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 247
    .local v6, "isPrivKeyAliasesExist":Z
    :cond_4
    :goto_2
    if-nez v6, :cond_7

    .line 250
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "all the aliases not valid since doenst have private key pair"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 245
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "isPrivKeyAliasesExist":Z
    .end local v7    # "isWifiAliasesExist":Z
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "isWifiAliasesExist":Z
    goto :goto_1

    .line 246
    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    .line 251
    .restart local v6    # "isPrivKeyAliasesExist":Z
    :cond_7
    if-nez v7, :cond_8

    if-eqz v6, :cond_b

    .line 252
    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "tempAlias$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 254
    .local v8, "tempAlias":Ljava/lang/String;
    if-eqz v7, :cond_a

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 255
    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    :cond_a
    if-eqz v6, :cond_9

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 259
    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 264
    .end local v6    # "isPrivKeyAliasesExist":Z
    .end local v7    # "isWifiAliasesExist":Z
    .end local v8    # "tempAlias":Ljava/lang/String;
    .end local v9    # "tempAlias$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 265
    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    const-string/jumbo v11, "TIMAKeyChain"

    const-string/jumbo v12, "Exception"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "aliasesHavingPrvKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v4    # "ccmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "isPrivKeyAliasesExist":Z
    .restart local v7    # "isWifiAliasesExist":Z
    .restart local v10    # "wifiAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    move-object v0, v1

    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 13
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v11, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 130
    const/4 v9, 0x0

    .line 133
    .local v9, "x509CertChain":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "getCertificateChainFromTimaKeystore called"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz p0, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    :cond_0
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "getCertificateChainFromTimaKeystore received empty/null alias"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "x509CertChain":[Ljava/security/cert/X509Certificate;
    :cond_1
    :goto_0
    monitor-exit v11

    .line 163
    return-object v9

    .line 138
    .restart local v9    # "x509CertChain":[Ljava/security/cert/X509Certificate;
    :cond_2
    :try_start_1
    const-string/jumbo v10, "TimaKeyStore"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 139
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 140
    const-string/jumbo v10, "PKCS11"

    const-string/jumbo v12, "SECPkcs11"

    invoke-static {v10, v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 141
    .local v8, "secpkcs11Ks":Ljava/security/KeyStore;
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 142
    invoke-virtual {v8, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 144
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    .line 145
    array-length v10, v2

    new-array v9, v10, [Ljava/security/cert/X509Certificate;

    .line 146
    .local v9, "x509CertChain":[Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v2

    if-ge v5, v10, :cond_1

    .line 147
    aget-object v10, v2, v5

    check-cast v10, Ljava/security/cert/X509Certificate;

    aput-object v10, v9, v5
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    .end local v5    # "i":I
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "secpkcs11Ks":Ljava/security/KeyStore;
    .end local v9    # "x509CertChain":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "CertificateException"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "NoSuchAlgorithmException"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v6

    .line 155
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "IOException"

    invoke-static {v10, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 153
    .local v3, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "KeyStoreException"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_4
    move-exception v4

    .line 151
    .local v4, "e":Ljava/security/NoSuchProviderException;
    const-string/jumbo v10, "TIMAKeyChain"

    const-string/jumbo v12, "java.security.NoSuchProviderException"

    invoke-static {v10, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 15
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v13, Lcom/sec/tima_keychain/TimaKeychain;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 173
    const/4 v9, 0x0

    .line 175
    .local v9, "opensslPKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string/jumbo v12, "TimaKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 176
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 177
    const-string/jumbo v12, "PKCS11"

    const-string/jumbo v14, "SECPkcs11"

    invoke-static {v12, v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 178
    .local v11, "secpkcs11Ks":Ljava/security/KeyStore;
    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 181
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "getPrivateKeyFromOpenSSL called"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p0, :cond_0

    const-string/jumbo v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 183
    :cond_0
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "getPrivateKeyFromOpenSSL received empty/null alias"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v9    # "opensslPKey":Ljava/security/PrivateKey;
    .end local v11    # "secpkcs11Ks":Ljava/security/KeyStore;
    :goto_0
    monitor-exit v13

    .line 220
    return-object v9

    .line 186
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    .restart local v9    # "opensslPKey":Ljava/security/PrivateKey;
    .restart local v11    # "secpkcs11Ks":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    const-string/jumbo v0, "knox_ccm_policy"

    .line 189
    .local v0, "KNOX_CCM_POLICY_SERVICE":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 188
    invoke-static {v12}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    .line 191
    .local v7, "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    if-nez v7, :cond_2

    .line 193
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "Unable start CCMservice"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    .line 196
    :cond_2
    :try_start_2
    invoke-interface {v7, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->hasGrant(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-nez v12, :cond_3

    .line 197
    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    .line 199
    :cond_3
    :try_start_3
    new-instance v8, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v8}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    .line 200
    .local v8, "opensslHelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    invoke-virtual {v8, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngine(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 201
    invoke-virtual {v8, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    .local v9, "opensslPKey":Ljava/security/PrivateKey;
    goto :goto_0

    .line 203
    .local v9, "opensslPKey":Ljava/security/PrivateKey;
    :cond_4
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "Unable to register openssl engine"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "KNOX_CCM_POLICY_SERVICE":Ljava/lang/String;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "mCCMService":Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .end local v8    # "opensslHelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    .end local v11    # "secpkcs11Ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Ljava/security/NoSuchProviderException;
    :try_start_4
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "java.security.NoSuchProviderException"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 171
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 216
    :catch_1
    move-exception v10

    .line 217
    .local v10, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "RemoteException"

    invoke-static {v12, v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    .end local v10    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 215
    .local v2, "ce":Ljava/security/cert/CertificateException;
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "CertificateException"

    invoke-static {v12, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 213
    .local v1, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "NoSuchAlgorithmException"

    invoke-static {v12, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    .end local v1    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v5

    .line 211
    .local v5, "ioe":Ljava/io/IOException;
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "IOException"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 209
    .local v3, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v12, "TIMAKeyChain"

    const-string/jumbo v14, "KeyStoreException"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .locals 8

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .line 69
    .local v2, "isTimaKeystoreEnabled":Z
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    const-string/jumbo v6, "tima"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 73
    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 75
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 79
    :cond_1
    :goto_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .line 80
    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v5}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 88
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v2    # "isTimaKeystoreEnabled":Z
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    return v2

    .line 76
    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v2    # "isTimaKeystoreEnabled":Z
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v2    # "isTimaKeystoreEnabled":Z
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "isCCMEnabled":Z
    const/4 v2, 0x0

    .line 98
    .local v2, "isTimaKeystoreEnabled":Z
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabledForPackage called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "isTimaKeystoreAndCCMEnabledForPackage received empty/null package name"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "isTimaKeystoreEnabled":Z
    :goto_0
    if-eqz v1, :cond_6

    :goto_1
    return v2

    .line 103
    .restart local v2    # "isTimaKeystoreEnabled":Z
    :cond_1
    :try_start_0
    const-string/jumbo v6, "tima"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 104
    .local v3, "mTimaService":Landroid/service/tima/ITimaService;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 106
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isAccessControlMethodPassword()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    .line 111
    :cond_2
    :goto_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v5

    .line 112
    .local v5, "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v5, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 120
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v2    # "isTimaKeystoreEnabled":Z
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    .end local v5    # "timaKeystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_3
    :goto_3
    const-string/jumbo v6, "TIMAKeyChain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v6, "TIMAKeyChain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isTimaKeystoreEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .restart local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v2    # "isTimaKeystoreEnabled":Z
    .restart local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 107
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 116
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "mTimaService":Landroid/service/tima/ITimaService;
    :catch_0
    move-exception v4

    .line 117
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "TIMAKeyChain"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 124
    .end local v2    # "isTimaKeystoreEnabled":Z
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
