.class public Lcom/samsung/android/mateservice/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "StringCrypto"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v3, 0x0

    .line 42
    .local v3, "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "dataType":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 44
    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    .line 47
    const-string/jumbo v6, "decryptResult"

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    .line 57
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    .line 50
    .restart local v3    # "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    :cond_2
    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    .line 53
    const-string/jumbo v6, "decryptResult"

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v7

    .line 52
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    .local v3, "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    goto :goto_0
.end method

.method private getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 18
    const/4 v3, 0x0

    .line 20
    .local v3, "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "dataType":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 22
    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    .line 25
    const-string/jumbo v6, "encryptResult"

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    .line 35
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    .line 28
    .restart local v3    # "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    :cond_2
    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 29
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    .line 31
    const-string/jumbo v6, "encryptResult"

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v7

    .line 30
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    .local v3, "ret":Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string/jumbo v0, "StringCrypto"

    const-string/jumbo v1, "ActionSecurityUtil"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    packed-switch p3, :pswitch_data_0

    .line 75
    :cond_0
    return-object v3

    .line 67
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x120003
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
