.class public Lcom/samsung/android/app/music/common/gcm/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistrationIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "RegistrationIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v2

    .line 32
    .local v2, "instanceID":Lcom/google/android/gms/iid/InstanceID;
    const/4 v4, 0x0

    .line 34
    .local v4, "token":Ljava/lang/String;
    :try_start_0
    const-string v6, "RegistrationIntentService"

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    const-string v0, "463731407234 "

    .line 37
    .local v0, "default_senderId":Ljava/lang/String;
    const-string v3, "GCM"

    .line 39
    .local v3, "scope":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/gcm/RegistrationIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/gcm/GcmController;->setPushToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    monitor-exit v6

    .line 52
    .end local v0    # "default_senderId":Ljava/lang/String;
    .end local v3    # "scope":Ljava/lang/String;
    :goto_0
    return-void

    .line 42
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
