.class public final Lcom/dawin/util/GooglePlayAdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;,
        Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;,
        Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot be called from the main thread"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.android.vending"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;-><init>(Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;)V

    .local v2, "connection":Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.google.android.gms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v2, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    new-instance v1, Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;

    invoke-virtual {v2}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;->a()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;-><init>(Landroid/os/IBinder;)V

    .local v1, "adInterface":Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;
    new-instance v0, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;->a(Z)Z

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "adInfo":Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .end local v0    # "adInfo":Lcom/dawin/util/GooglePlayAdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/dawin/util/GooglePlayAdvertisingIdClient$b;
    .end local v2    # "connection":Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    throw v3

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Lcom/dawin/util/GooglePlayAdvertisingIdClient$a;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    .local v4, "exception":Ljava/lang/Exception;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7

    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Google Play connection failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
