.class public final Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    }
.end annotation


# static fields
.field private static final BLINK_STATE:Ljava/lang/String; = "Blink"

.field private static final COMPLETED_STATE:Ljava/lang/String; = "Completed"

.field private static final LOCKED_STATE:Ljava/lang/String; = "Locked"

.field private static final NORMAL_STATE:Ljava/lang/String; = "Normal"

.field private static final RLC_AES256_IV_SIZE:I = 0x10

.field private static final RLC_AES256_KEY_SIZE:I = 0x20

.field private static final RLC_DELAY_TIME:I = 0x7530

.field private static final RLC_ERR_CERTIFICATE:I = -0x3

.field private static final RLC_ERR_CRYPTO_FUNCTION:I = -0x8

.field private static final RLC_ERR_GENERAL:I = -0x1

.field private static final RLC_ERR_INVALID_ARGUMENT:I = -0x2

.field private static final RLC_ERR_INVALID_TOKEN:I = -0x4

.field private static final RLC_ERR_LOCKSCREEN:I = -0x9

.field private static final RLC_ERR_MAX_FAILURE_COUNT_REACHED:I = -0x7

.field private static final RLC_ERR_SERIALIZATION:I = -0xa

.field private static final RLC_ERR_SERVER_RESULT_FAIL:I = -0x6

.field private static final RLC_ERR_VAULTKEEPER:I = -0x5

.field private static final RLC_FAILCOUNT_FOR_DELAY:I = 0x5

.field private static final RLC_ID_SIZE:I = 0x28

.field private static final RLC_KEY_SIZE:I = 0x20

.field private static final RLC_NONCE_FLAG_VERIFY:I = 0x2

.field private static final RLC_NONCE_FLAG_WRITE:I = 0x1

.field private static final RLC_NONCE_SIZE:I = 0x20

.field private static final RLC_SHA256_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "RlcManager"

.field private static mCompleteUnlockingDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager; = null

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings; = null

.field private static mNonceDev:[B = null

.field private static mNonceSvr:[B = null

.field private static mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener; = null

.field private static mRlcId:[B = null

.field private static mRlcKey:[B = null

.field private static final mRlcVaultName:Ljava/lang/String; = "RemoteLockControl"

.field private static mServerCert:[B

.field private static mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# instance fields
.field mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    return v0
.end method

.method static synthetic -get1()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "rlcErrorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 68
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    .line 69
    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    .line 70
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 71
    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 80
    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    .line 81
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 82
    const-string/jumbo v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 83
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    .line 84
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .line 85
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rlcListener"    # Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 90
    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    .line 91
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 92
    const-string/jumbo v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 93
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    .line 94
    sput-object p2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    .line 95
    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 88
    return-void
.end method

.method private clearRlcData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 101
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 103
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 104
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 107
    sput-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    .line 98
    :cond_0
    return-void
.end method

.method private deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "objectBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 935
    .local v4, "ois":Ljava/io/ObjectInputStream;
    const/4 v6, 0x0

    .line 937
    .local v6, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 938
    :cond_0
    return-object v8

    .line 942
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 944
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    move-result-object v6

    .line 953
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 954
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 957
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "ret":Ljava/lang/Object;, "TT;"
    :cond_4
    :goto_2
    return-object v6

    .line 953
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "ret":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 954
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 947
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v3

    .line 948
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 949
    const-string/jumbo v7, "Error deserialize"

    const/16 v8, -0xa

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 953
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 954
    :cond_5
    :goto_4
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 953
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 952
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 953
    :goto_5
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 954
    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 952
    :cond_7
    :goto_7
    throw v7

    .line 953
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 954
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 952
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 947
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3
.end method

.method private getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x5

    const/4 v5, 0x0

    .line 962
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getRlcVaultData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v2, 0x0

    .line 965
    .local v2, "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    .line 966
    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v6, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 970
    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v0

    .line 971
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 972
    const-string/jumbo v3, "Error from VaultKeeper (readData)"

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 974
    :cond_1
    array-length v3, v0

    if-nez v3, :cond_2

    .line 976
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-object v5

    .line 980
    :cond_2
    const-class v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    check-cast v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .local v2, "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    return-object v2

    .line 983
    .end local v0    # "bytes":[B
    .end local v2    # "obj":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1
.end method

.method private makeDeviceMsg([B[B[B[B[B[B)[B
    .locals 7
    .param p1, "serverCert"    # [B
    .param p2, "rlcKey"    # [B
    .param p3, "rlcId"    # [B
    .param p4, "nonceSvr"    # [B
    .param p5, "nonceDev"    # [B
    .param p6, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "msgLength":I
    if-eqz p2, :cond_0

    array-length v5, p2

    add-int/lit8 v3, v5, 0x0

    .line 153
    :cond_0
    if-eqz p3, :cond_1

    array-length v5, p3

    add-int/2addr v3, v5

    .line 154
    :cond_1
    if-eqz p4, :cond_2

    array-length v5, p4

    add-int/2addr v3, v5

    .line 155
    :cond_2
    if-eqz p5, :cond_3

    array-length v5, p5

    add-int/2addr v3, v5

    .line 156
    :cond_3
    if-eqz p6, :cond_4

    array-length v5, p6

    add-int/2addr v3, v5

    .line 158
    :cond_4
    new-array v2, v3, [B

    .line 159
    .local v2, "msg":[B
    const/4 v0, 0x0

    .line 160
    .local v0, "deviceMsg":[B
    const/4 v4, 0x0

    .line 164
    .local v4, "offset":I
    if-eqz p2, :cond_5

    .line 166
    :try_start_0
    array-length v5, p2

    const/4 v6, 0x0

    invoke-static {p2, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    array-length v5, p2

    add-int/lit8 v4, v5, 0x0

    .line 170
    :cond_5
    if-eqz p3, :cond_6

    .line 172
    array-length v5, p3

    const/4 v6, 0x0

    invoke-static {p3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 173
    array-length v5, p3

    add-int/2addr v4, v5

    .line 176
    :cond_6
    if-eqz p4, :cond_7

    .line 178
    array-length v5, p4

    const/4 v6, 0x0

    invoke-static {p4, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    array-length v5, p4

    add-int/2addr v4, v5

    .line 182
    :cond_7
    if-eqz p5, :cond_8

    .line 184
    array-length v5, p5

    const/4 v6, 0x0

    invoke-static {p5, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    array-length v5, p5

    add-int/2addr v4, v5

    .line 188
    :cond_8
    if-eqz p6, :cond_9

    .line 190
    array-length v5, p6

    const/4 v6, 0x0

    invoke-static {p6, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 191
    array-length v5, p6

    add-int/2addr v4, v5

    .line 194
    :cond_9
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    .local v0, "deviceMsg":[B
    return-object v0

    .line 197
    .local v0, "deviceMsg":[B
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1
.end method

.method private makeResultDev()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 207
    const/4 v9, 0x0

    .line 209
    .local v9, "resultDev":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 214
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "state":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 216
    const-string/jumbo v0, "Error from VaultKeeper (readState)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 218
    :cond_1
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    .line 219
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 218
    const/4 v2, 0x0

    .line 219
    const/4 v5, 0x0

    move-object v0, p0

    .line 218
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 231
    .end local v9    # "resultDev":[B
    .end local v10    # "state":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 226
    .restart local v9    # "resultDev":[B
    :catch_0
    move-exception v8

    .line 227
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    const-string/jumbo v0, "Exception"

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 223
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method private parameterChecking([B[B[B)V
    .locals 6
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x28

    const/16 v4, 0x20

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 121
    if-nez p1, :cond_4

    .line 123
    const-string/jumbo v0, "serverCert is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 133
    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v0, v4, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nonceSvr size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 136
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-eq v0, v5, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rlcId size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 140
    :cond_1
    if-eqz p2, :cond_2

    .line 141
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {p2, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 143
    :cond_2
    if-eqz p3, :cond_3

    .line 144
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {p3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    :cond_3
    return-void

    .line 127
    :cond_4
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->verifyCertChain([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    const-string/jumbo v0, "Failed to verify Certificate Chain"

    const/4 v1, -0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 130
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    goto :goto_0
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 903
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    const/4 v6, 0x0

    .line 905
    .local v6, "ret":[B
    if-nez p1, :cond_0

    .line 906
    const/4 v7, 0x0

    new-array v7, v7, [B

    return-object v7

    .line 910
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 912
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 913
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 922
    .local v6, "ret":[B
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 923
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 927
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .end local v6    # "ret":[B
    :cond_3
    :goto_2
    return-object v6

    .line 922
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "ret":[B
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 923
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 916
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    .local v6, "ret":[B
    :catch_2
    move-exception v3

    .line 917
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 918
    const-string/jumbo v7, "Error serialize"

    const/16 v8, -0xa

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 922
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 923
    :cond_4
    :goto_4
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 922
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 921
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 922
    :goto_5
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 923
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 921
    :cond_6
    :goto_7
    throw v7

    .line 922
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 923
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 921
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 916
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method private setRemoteLockToLockscreen()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v8, -0x9

    .line 806
    const-string/jumbo v5, "RlcManager"

    const-string/jumbo v6, "setRemoteLockToLockscreen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :try_start_0
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v5, :cond_0

    .line 811
    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    .line 814
    .local v3, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v3, :cond_1

    .line 816
    const-string/jumbo v5, "getRlcVaultData return null"

    const/16 v6, -0x9

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 819
    :cond_1
    new-instance v5, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const-string/jumbo v6, "Locked"

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    const/4 v6, 0x2

    invoke-direct {v5, v6, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 820
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v4

    .line 819
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    .line 821
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    .line 822
    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    .line 823
    const/4 v5, 0x5

    .line 819
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    .line 824
    const-wide/16 v6, 0x7530

    .line 819
    invoke-virtual {v4, v6, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    .line 825
    const/4 v5, 0x0

    .line 819
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    .line 828
    .local v2, "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    .end local v2    # "remoteLockInfo":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v3    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v1

    .line 837
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1

    .line 831
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 833
    const-string/jumbo v4, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private throwException(ILjava/lang/String;)V
    .locals 3
    .param p1, "rlcErrorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 113
    const-string/jumbo v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToLockScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v2, 0x0

    .line 846
    .local v2, "ret":Z
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "bindToLockScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_0

    .line 850
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 852
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 853
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v1

    .line 861
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1

    .line 855
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 857
    const-string/jumbo v3, "Runtime Exception from Lockscreen"

    const/16 v4, -0x9

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public completeBlinking(Z[B[B)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x5

    .line 542
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeBlinking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, "resultDev":[B
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    .line 546
    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 553
    :cond_1
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passcode hash length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 556
    :cond_2
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Blink"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 557
    .local v2, "vaultResult":I
    if-eqz v2, :cond_3

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write blink with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 560
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->unbindFromLockScreen()V

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 570
    .local v1, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 573
    return-object v1

    .line 565
    .end local v2    # "vaultResult":I
    .local v1, "resultDev":[B
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 569
    throw v3
.end method

.method public completeCompleting(Z[B)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x5

    .line 387
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeCompleting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "resultDev":[B
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    .line 391
    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 395
    :cond_0
    if-nez p1, :cond_1

    .line 396
    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 398
    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Completed"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 399
    .local v2, "vaultResult":I
    if-eqz v2, :cond_2

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 402
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 412
    .local v1, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 415
    return-object v1

    .line 407
    .end local v2    # "vaultResult":I
    .local v1, "resultDev":[B
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 411
    throw v3
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "noticeMsg"    # Ljava/lang/String;
    .param p5, "phoneNumber"    # Ljava/lang/String;
    .param p6, "requesterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x5

    .line 453
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeLocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v1, 0x0

    .line 456
    .local v1, "resultDev":[B
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    .line 457
    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 461
    :cond_0
    if-nez p1, :cond_1

    .line 462
    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 464
    :cond_1
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passcode hash length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 467
    :cond_2
    if-nez p4, :cond_3

    .line 468
    const-string/jumbo v3, "noticeMsg is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 470
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 471
    const-string/jumbo v3, "noticeMsg has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 473
    :cond_4
    if-nez p5, :cond_5

    .line 474
    const-string/jumbo v3, "nophoneNumberticeMsg is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 476
    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 477
    const-string/jumbo v3, "phoneNumber has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 479
    :cond_6
    if-nez p6, :cond_7

    .line 480
    const-string/jumbo v3, "requesterName is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 482
    :cond_7
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 483
    const-string/jumbo v3, "requesterName has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 485
    :cond_8
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Locked"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 486
    .local v2, "vaultResult":I
    if-eqz v2, :cond_9

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 489
    :cond_9
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 490
    const-string/jumbo v3, "setLockscreenData"

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 492
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 502
    .local v1, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 505
    return-object v1

    .line 497
    .end local v2    # "vaultResult":I
    .local v1, "resultDev":[B
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 501
    throw v3
.end method

.method public completeRegistering(Z[B[B)[B
    .locals 9
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .param p3, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x5

    .line 316
    const-string/jumbo v5, "RlcManager"

    const-string/jumbo v6, "completeRegistering"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v3, 0x0

    .line 319
    .local v3, "resultDev":[B
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v5, :cond_0

    .line 320
    const-string/jumbo v5, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 324
    :cond_0
    if-nez p1, :cond_1

    .line 325
    :try_start_0
    const-string/jumbo v5, "resultSvr is fail"

    const/4 v6, -0x6

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 327
    :cond_1
    const-string/jumbo v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x20

    new-array v2, v5, [B

    .line 328
    .local v2, "input":[B
    const-string/jumbo v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 329
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string/jumbo v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 331
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v1

    .line 332
    .local v1, "hmac":[B
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 333
    const-string/jumbo v5, "Invalid token"

    const/4 v6, -0x4

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 335
    :cond_2
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const-string/jumbo v7, "Normal"

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-virtual {v5, v6, v7, v8, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([BLjava/lang/String;[B[B)I

    move-result v4

    .line 336
    .local v4, "vaultResult":I
    if-eqz v4, :cond_3

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error from VaultKeeper (initialization/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x5

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 339
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 347
    .local v3, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 350
    return-object v3

    .line 342
    .end local v1    # "hmac":[B
    .end local v2    # "input":[B
    .end local v4    # "vaultResult":I
    .local v3, "resultDev":[B
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v5

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 346
    throw v5
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 11
    .param p1, "passcode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x5

    .line 645
    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "completeUnlocking(passcode)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v1, -0x1

    .line 648
    .local v1, "failureCount":I
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v7, :cond_0

    .line 649
    const-string/jumbo v7, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 653
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getFailureCount()I

    move-result v1

    .line 656
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v4

    .line 657
    .local v4, "nonce":[B
    if-nez v4, :cond_1

    .line 658
    const-string/jumbo v7, "Error from VaultKeeper (getNonce)"

    const/4 v8, -0x5

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 660
    :cond_1
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 662
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v5

    .line 663
    .local v5, "secondaryKey":[B
    if-nez v5, :cond_2

    .line 664
    const-string/jumbo v7, "Fail to hash for passcode"

    const/4 v8, -0x8

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 666
    :cond_2
    const-string/jumbo v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x20

    new-array v3, v7, [B

    .line 667
    .local v3, "input":[B
    const-string/jumbo v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string/jumbo v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v9, v3, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 668
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string/jumbo v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v7, v9, v3, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 669
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v2

    .line 671
    .local v2, "hmac":[B
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v8, "Normal"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v6

    .line 672
    .local v6, "vaultResult":I
    if-nez v6, :cond_4

    .line 674
    const/4 v1, 0x0

    .line 681
    :goto_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    .line 683
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setFailureCount(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 684
    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "Failed setFailureCount"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 696
    return v1

    .line 678
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 679
    :try_start_1
    const-string/jumbo v7, "RlcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Incorrect passcode(VaultKeeper-write/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), current failure count ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    .end local v2    # "hmac":[B
    .end local v3    # "input":[B
    .end local v4    # "nonce":[B
    .end local v5    # "secondaryKey":[B
    .end local v6    # "vaultResult":I
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v7

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 692
    throw v7
.end method

.method public completeUnlocking(Z[B)[B
    .locals 6
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x5

    .line 610
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeUnlocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "resultDev":[B
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    .line 614
    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 618
    :cond_0
    if-nez p1, :cond_1

    .line 619
    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 621
    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Normal"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    .line 622
    .local v2, "vaultResult":I
    if-eqz v2, :cond_2

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 625
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    .line 627
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 635
    .local v1, "resultDev":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 638
    return-object v1

    .line 630
    .end local v2    # "vaultResult":I
    .local v1, "resultDev":[B
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .end local v0    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v3

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 634
    throw v3
.end method

.method public encryptData([B[B)[B
    .locals 12
    .param p1, "data"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 236
    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "encryptClientData"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, "ciphertext":[B
    const/4 v1, 0x0

    .line 239
    .local v1, "cipherOfKeyAndIV":[B
    const/4 v0, 0x0

    .line 240
    .local v0, "cipherOfClientData":[B
    new-array v5, v9, [B

    .line 241
    .local v5, "key":[B
    new-array v4, v11, [B

    .line 242
    .local v4, "iv":[B
    const/16 v7, 0x30

    new-array v6, v7, [B

    .line 244
    .local v6, "keyAndIv":[B
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 245
    :cond_0
    const-string/jumbo v7, "Invalid clientData"

    const/4 v8, -0x2

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 249
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p2, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 250
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 251
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 253
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-static {v5, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v9, 0x10

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 255
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v6, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithServerPubKey([B[B)[B

    move-result-object v1

    .line 256
    .local v1, "cipherOfKeyAndIV":[B
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithAES256CBC([B[B[B)[B

    move-result-object v0

    .line 258
    .local v0, "cipherOfClientData":[B
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 259
    :cond_2
    const-string/jumbo v7, "encryptData"

    const/4 v8, -0x8

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 261
    :cond_3
    array-length v7, v1

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v2, v7, [B

    .line 262
    .local v2, "ciphertext":[B
    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    array-length v7, v1

    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 274
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 277
    return-object v2

    .line 267
    .end local v0    # "cipherOfClientData":[B
    .end local v1    # "cipherOfKeyAndIV":[B
    .end local v2    # "ciphertext":[B
    :catch_0
    move-exception v3

    .line 268
    .local v3, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v3    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v7

    .line 272
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 274
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 271
    throw v7
.end method

.method public getClientData()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1137
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getClientData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-string/jumbo v0, ""

    .line 1142
    .local v0, "clientData":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 1143
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_0

    .line 1145
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-object v0

    .line 1149
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1151
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No client data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-object v0

    .line 1155
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1162
    return-object v0

    .line 1158
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v1

    .line 1159
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1
.end method

.method public getFailureCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1213
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getFailureCount"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v1, -0x1

    .line 1218
    .local v1, "failureCount":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 1219
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_0

    .line 1221
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v1, 0x0

    .line 1223
    return v1

    .line 1226
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getFailureCount()I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1233
    return v1

    .line 1229
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1022
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getNoticeMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string/jumbo v1, ""

    .line 1027
    .local v1, "noticeMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 1028
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_0

    .line 1030
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-object v1

    .line 1034
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1036
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No notice message in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-object v1

    .line 1040
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1047
    return-object v1

    .line 1043
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 992
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getPhoneNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string/jumbo v1, ""

    .line 997
    .local v1, "phoneNumber":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 998
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_0

    .line 1000
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-object v1

    .line 1004
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1006
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No phone number in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-object v1

    .line 1010
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1017
    return-object v1

    .line 1013
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 1052
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getRequesterName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string/jumbo v1, ""

    .line 1057
    .local v1, "requesterName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    .line 1058
    .local v2, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v2, :cond_0

    .line 1060
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-object v1

    .line 1064
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1066
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No requester name in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-object v1

    .line 1070
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1077
    return-object v1

    .line 1073
    .end local v2    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public prepareBlinking([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 511
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v7, 0x0

    .line 514
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 515
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 519
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 521
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 522
    .local v9, "nonce":[B
    if-nez v9, :cond_1

    .line 523
    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 525
    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 528
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 527
    const/4 v2, 0x0

    .line 528
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 527
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 536
    .local v7, "deviceMsg":[B
    return-object v7

    .line 531
    .end local v9    # "nonce":[B
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 532
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 533
    throw v8
.end method

.method public prepareCompleting([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 356
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v7, 0x0

    .line 359
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 360
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 364
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 366
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 367
    .local v9, "nonce":[B
    if-nez v9, :cond_1

    .line 368
    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 370
    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 373
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 372
    const/4 v2, 0x0

    .line 373
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 372
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 381
    .local v7, "deviceMsg":[B
    return-object v7

    .line 376
    .end local v9    # "nonce":[B
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 377
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 378
    throw v8
.end method

.method public prepareLocking([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 421
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v7, 0x0

    .line 424
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 425
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 429
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 431
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 432
    .local v9, "nonce":[B
    if-nez v9, :cond_1

    .line 433
    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 435
    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 438
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 437
    const/4 v2, 0x0

    .line 438
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 437
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 446
    .local v7, "deviceMsg":[B
    return-object v7

    .line 441
    .end local v9    # "nonce":[B
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 442
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 443
    throw v8
.end method

.method public prepareRegistering([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 283
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v7, 0x0

    .line 286
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 287
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 291
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 293
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    .line 295
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 296
    .local v9, "nonce":[B
    if-nez v9, :cond_1

    .line 297
    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 299
    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    .line 302
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 301
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 310
    .local v7, "deviceMsg":[B
    return-object v7

    .line 305
    .end local v9    # "nonce":[B
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 306
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 307
    throw v8
.end method

.method public prepareUnlocking([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 579
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v7, 0x0

    .line 582
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 583
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 587
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 589
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    .line 590
    .local v9, "nonce":[B
    if-nez v9, :cond_1

    .line 591
    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 593
    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 596
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    .line 595
    const/4 v2, 0x0

    .line 596
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 595
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 604
    .local v7, "deviceMsg":[B
    return-object v7

    .line 599
    .end local v9    # "nonce":[B
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 600
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 601
    throw v8
.end method

.method public query()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x5

    .line 734
    const-string/jumbo v2, "RlcManager"

    const-string/jumbo v3, "query(void)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v1, 0x0

    .line 737
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v2, :cond_0

    .line 738
    const-string/jumbo v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 742
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "state":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 744
    const-string/jumbo v2, "Error from VaultKeeper (readState)"

    const/4 v3, -0x5

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_1
    return-object v1

    .line 748
    .end local v1    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v0
.end method

.method public query([B[B[B)[B
    .locals 10
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 702
    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v7, 0x0

    .line 705
    .local v7, "deviceMsg":[B
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    .line 706
    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 710
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    .line 712
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v9

    .line 713
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 714
    const-string/jumbo v0, "Error from VaultKeeper (readState)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 717
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 716
    const/4 v2, 0x0

    .line 717
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    .line 716
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 725
    .local v7, "deviceMsg":[B
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 728
    return-object v7

    .line 720
    .end local v9    # "state":Ljava/lang/String;
    .local v7, "deviceMsg":[B
    :catch_0
    move-exception v8

    .line 721
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    .end local v8    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catchall_0
    move-exception v0

    .line 725
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    .line 724
    throw v0
.end method

.method public setClientData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "clientData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    .line 1167
    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setClientData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string/jumbo v8, ""

    .line 1170
    .local v8, "oldClientData":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_0

    .line 1171
    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1176
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1178
    .local v6, "bytes":[B
    if-nez v6, :cond_1

    .line 1179
    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1181
    :cond_1
    array-length v1, v6

    if-nez v1, :cond_3

    .line 1183
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v1, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1197
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1198
    .local v10, "vaultResult":I
    if-eqz v10, :cond_2

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1207
    :cond_2
    return-object v8

    .line 1187
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_3
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1188
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_4

    .line 1189
    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1191
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v8

    .line 1192
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setClientData(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1204
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method public setFailureCount(I)Z
    .locals 11
    .param p1, "failureCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    .line 1238
    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setFailureCount"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v8, 0x0

    .line 1241
    .local v8, "ret":Z
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_0

    .line 1242
    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1247
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1249
    .local v6, "bytes":[B
    if-nez v6, :cond_1

    .line 1250
    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1252
    :cond_1
    array-length v1, v6

    if-nez v1, :cond_4

    .line 1254
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setFailureCount(I)V

    .line 1265
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1267
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1268
    .local v10, "vaultResult":I
    if-eqz v10, :cond_3

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1271
    :cond_3
    const/4 v8, 0x1

    .line 1278
    return v8

    .line 1258
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_4
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1259
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_2

    .line 1260
    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1274
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1275
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method public setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "noticeMsg"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "requesterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    .line 1081
    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setLockscreenData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v8, 0x0

    .line 1084
    .local v8, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1085
    const-string/jumbo v1, "One of paratemers should not be null"

    const/4 v2, -0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1087
    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_1

    .line 1088
    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1093
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    .line 1095
    .local v6, "bytes":[B
    if-nez v6, :cond_2

    .line 1096
    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1098
    :cond_2
    array-length v1, v6

    if-nez v1, :cond_5

    .line 1100
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    .local v0, "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    .line 1120
    .local v9, "serializedObj":[B
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    .line 1121
    .local v10, "vaultResult":I
    if-eqz v10, :cond_4

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1124
    :cond_4
    const/4 v8, 0x1

    .line 1132
    return v8

    .line 1104
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v9    # "serializedObj":[B
    .end local v10    # "vaultResult":I
    :cond_5
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    .line 1105
    .restart local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    if-nez v0, :cond_6

    .line 1106
    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    .line 1108
    :cond_6
    if-eqz p1, :cond_7

    .line 1109
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setNoticeMessage(Ljava/lang/String;)V

    .line 1111
    :cond_7
    if-eqz p2, :cond_8

    .line 1112
    invoke-virtual {v0, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setPhoneNumber(Ljava/lang/String;)V

    .line 1114
    :cond_8
    if-eqz p3, :cond_3

    .line 1115
    invoke-virtual {v0, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setRequesterName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    .end local v0    # "rvd":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 1129
    .local v7, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v7
.end method

.method public unbindFromLockScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    .prologue
    .line 867
    const/4 v2, 0x0

    .line 869
    .local v2, "ret":Z
    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "unbindFromLockScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_0

    .line 873
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 875
    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 876
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    throw v1

    .line 878
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    :catch_1
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 880
    const-string/jumbo v3, "Runtime Exception from Lockscreen"

    const/16 v4, -0x9

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method
