.class public Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;
.super Ljava/lang/Object;
.source "StorageVolumeCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getState(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 37
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageManagerSdlCompat;->getState(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isRemovable(Landroid/os/storage/StorageVolume;)Z
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->isRemovable(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    goto :goto_0
.end method
