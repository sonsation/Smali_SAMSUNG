.class public Lcom/mapps/android/share/GetAdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "GetAdvertisingIdTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/mapps/android/listner/AdvertisingIdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapps/android/listner/AdvertisingIdListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mapps/android/listner/AdvertisingIdListener;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->listener:Lcom/mapps/android/listner/AdvertisingIdListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "adInfo":Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    :try_start_0
    iget-object v2, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mapps/android/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V
    .locals 1
    .param p1, "result"    # Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->listener:Lcom/mapps/android/listner/AdvertisingIdListener;

    invoke-interface {v0, p1}, Lcom/mapps/android/listner/AdvertisingIdListener;->onReceivedAdvertisingId(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V

    .line 42
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->onPostExecute(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V

    return-void
.end method
