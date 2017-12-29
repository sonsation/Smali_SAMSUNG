.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyUtils;
.super Ljava/lang/Object;
.source "BixbyUtils.java"


# static fields
.field private static mIsPostpaySim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    if-nez p0, :cond_0

    .line 40
    return v3

    .line 43
    :cond_0
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 45
    return v3

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 49
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 50
    return v3

    .line 53
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 54
    .local v2, "networkType":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    .line 55
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    return v3

    .line 58
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v3, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyUtils;->mIsPostpaySim:Z

    :cond_5
    return v3
.end method

.method public static setIsPostpaySim(Z)V
    .locals 0
    .param p0, "isPostpaySim"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyUtils;->mIsPostpaySim:Z

    .line 29
    return-void
.end method
