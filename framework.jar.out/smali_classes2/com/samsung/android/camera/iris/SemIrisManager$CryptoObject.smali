.class public final Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;[B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 533
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 534
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 532
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 539
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 540
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 538
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 545
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 546
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    .line 544
    return-void
.end method

.method private setFidoResultData([B)V
    .locals 0
    .param p1, "fidoResultData"    # [B

    .prologue
    .line 602
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    .line 601
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFidoRequestData()[B
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpId()J
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
