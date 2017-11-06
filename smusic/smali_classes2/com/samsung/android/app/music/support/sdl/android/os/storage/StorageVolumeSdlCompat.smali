.class public Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;
.super Ljava/lang/Object;
.source "StorageVolumeSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRemovable(Landroid/os/storage/StorageVolume;)Z
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    return v0
.end method
