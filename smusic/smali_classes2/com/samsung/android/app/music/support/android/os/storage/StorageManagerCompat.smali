.class public Lcom/samsung/android/app/music/support/android/os/storage/StorageManagerCompat;
.super Ljava/lang/Object;
.source "StorageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;
    .locals 2
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 14
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 16
    .local v0, "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/StorageVolume;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/storage/StorageVolume;

    .line 21
    .end local v0    # "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :goto_0
    return-object v1

    .line 19
    .restart local v0    # "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 21
    .end local v0    # "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageManagerSdlCompat;->getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    goto :goto_0
.end method
