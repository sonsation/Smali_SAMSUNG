.class Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleSetUploadPath"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1106
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 1108
    :cond_0
    return v7

    .line 1107
    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1110
    const/4 v1, 0x0

    .line 1112
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1115
    const-string/jumbo v4, "/Download"

    .line 1114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1136
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    const/4 v3, 0x1

    return v3

    .line 1118
    .local v1, "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1119
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v3

    .line 1120
    const-string/jumbo v4, "storage"

    .line 1119
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1121
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    .line 1124
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1128
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1129
    const-string/jumbo v4, "NearbyDownloadTo"

    .line 1128
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "HandleSetUploadPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    return v7

    .line 1132
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v1, "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "HandleSetUploadPath"

    const-string/jumbo v5, "incorrect value"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1133
    return v7
.end method
