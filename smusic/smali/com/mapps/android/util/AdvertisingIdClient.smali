.class public final Lcom/mapps/android/util/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;,
        Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot be called from the main thread"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 49
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vending"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 51
    new-instance v2, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;)V

    .line 52
    .local v2, "connection":Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.google.android.gms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3, v2, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    :try_start_0
    new-instance v1, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v2}, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 59
    .local v1, "adInterface":Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;
    new-instance v0, Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v0, "adInfo":Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 60
    return-object v0

    .line 61
    .end local v0    # "adInfo":Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/mapps/android/util/AdvertisingIdClient$AdvertisingInterface;
    :catchall_0
    move-exception v5

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    throw v5

    .line 65
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Google Play connection failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
