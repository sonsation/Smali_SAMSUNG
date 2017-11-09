.class Lcom/android/server/audio/AudioService$SoundKitchen;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mEnabled:Z

.field private mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 12452
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    .line 12454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    .line 12452
    return-void
.end method

.method private resetByEnableDisable()V
    .locals 7

    .prologue
    .line 12483
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "resetByEnableDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12485
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_1

    .line 12487
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get51(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12501
    :goto_0
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 12502
    .local v1, "device":I
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v4

    .line 12504
    .local v4, "list":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 12505
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v5, :cond_0

    .line 12506
    aget v5, v4, v3

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    .line 12507
    .local v0, "appDevice":I
    const v5, 0x8000

    if-eq v1, v5, :cond_0

    if-eq v1, v0, :cond_0

    .line 12508
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    aget v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->-wrap52(Lcom/android/server/audio/AudioService;I)V

    .line 12504
    .end local v0    # "appDevice":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12488
    .end local v1    # "device":I
    .end local v3    # "i":I
    .end local v4    # "list":[I
    :catch_0
    move-exception v2

    .line 12489
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -registerProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12490
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 12494
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get51(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12495
    :catch_1
    move-exception v2

    .line 12496
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -unregisterProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12497
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 12512
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "device":I
    .restart local v3    # "i":I
    .restart local v4    # "list":[I
    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 12513
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    .line 12512
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 12516
    :cond_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V

    .line 12482
    return-void
.end method

.method private setDeviceToNative(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .prologue
    .line 12797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12798
    const-string/jumbo v1, ";"

    .line 12797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12799
    const-string/jumbo v1, "multisound_setdevice_device"

    .line 12797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12799
    const-string/jumbo v1, "="

    .line 12797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12796
    return-void
.end method

.method private setMaxLimitedSpkVolumeToNative(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 12809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_max_limited_spk_volume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12810
    const-string/jumbo v1, ";"

    .line 12809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12811
    const-string/jumbo v1, "multisound_max_limited_spk_volume_state"

    .line 12809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12811
    const-string/jumbo v1, "="

    .line 12809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12808
    return-void
.end method

.method private setStateToNative()V
    .locals 4

    .prologue
    .line 12787
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12792
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audioParam;multisound_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12793
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    .line 12792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12785
    return-void

    .line 12788
    :catch_0
    move-exception v0

    .line 12789
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in Thread.sleep() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVolumeToNative(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    .line 12803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setvolume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12804
    const-string/jumbo v1, ";"

    .line 12803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12805
    const-string/jumbo v1, "multisound_setvolume_volume"

    .line 12803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12805
    const-string/jumbo v1, "="

    .line 12803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 12802
    return-void
.end method


# virtual methods
.method public checkAndRemoveItem(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 12729
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12730
    .local v0, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12731
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12732
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12728
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 12468
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12469
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v0, :cond_0

    .line 12470
    return-void

    .line 12472
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    .line 12473
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    .line 12474
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    .line 12467
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 12764
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\nMultiSound, size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", isEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->isEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12765
    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 12766
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12767
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 12768
    .local v8, "uid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v0

    .line 12769
    .local v0, "device":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v6

    .line 12770
    .local v6, "ratio":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v4

    .line 12771
    .local v4, "maxLimitSpkVolume":Z
    const-string/jumbo v5, ""

    .line 12773
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v11}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 12777
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), device = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", volume = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", maxLimitSpkVolume = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12774
    :catch_0
    move-exception v1

    .line 12775
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "AudioService"

    const-string/jumbo v10, "not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12779
    .end local v0    # "device":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v4    # "maxLimitSpkVolume":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "ratio":I
    .end local v8    # "uid":I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current Default Device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12781
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pin Device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pin App:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12763
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 12458
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "eanble"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12459
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 12460
    return-void

    .line 12462
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    .line 12463
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    .line 12464
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->showNotification()V

    .line 12457
    return-void
.end method

.method public getAppDevice(I)I
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x0

    .line 12569
    const/4 v2, 0x0

    .line 12571
    .local v2, "device":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 12572
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v2

    .line 12574
    :cond_0
    const v5, 0x8000

    if-ne v2, v5, :cond_1

    .line 12575
    return v2

    .line 12577
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_9

    .line 12578
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 12583
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 12584
    .local v1, "cur_device":I
    and-int/lit16 v5, v1, 0x400e

    if-eqz v5, :cond_3

    .line 12585
    move v2, v1

    .line 12610
    .end local v1    # "cur_device":I
    :cond_2
    :goto_0
    return v2

    .line 12587
    .restart local v1    # "cur_device":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v6

    monitor-enter v6

    .line 12588
    const/4 v0, 0x0

    .line 12589
    .local v0, "connected_device":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 12590
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 12591
    .local v4, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v7, -0x80000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_4

    .line 12589
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12593
    :cond_4
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v5, v5, 0x400e

    or-int/2addr v0, v5

    goto :goto_2

    .line 12595
    .end local v4    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_5
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_6

    .line 12596
    const/16 v2, 0x4000

    :goto_3
    monitor-exit v6

    goto :goto_0

    .line 12597
    :cond_6
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_7

    .line 12598
    const/4 v2, 0x4

    goto :goto_3

    .line 12599
    :cond_7
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_8

    .line 12600
    const/16 v2, 0x8

    goto :goto_3

    .line 12602
    :cond_8
    const/4 v2, 0x2

    goto :goto_3

    .line 12587
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 12608
    .end local v0    # "connected_device":I
    .end local v1    # "cur_device":I
    .end local v3    # "i":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAppVolume(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 12629
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12630
    .local v0, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-eqz v0, :cond_0

    .line 12631
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v1

    return v1

    .line 12633
    :cond_0
    const/16 v1, 0x64

    return v1
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 9
    .param p1, "device"    # I

    .prologue
    .line 12695
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v5, :cond_0

    .line 12696
    const-string/jumbo v5, ""

    return-object v5

    .line 12698
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 12699
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12700
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 12701
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 12703
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 12704
    :catch_0
    move-exception v0

    .line 12705
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12709
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v4    # "uid":I
    :cond_2
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public getPinDevice()I
    .locals 5

    .prologue
    .line 12679
    const/4 v1, 0x0

    .line 12680
    .local v1, "device":I
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v4, :cond_0

    .line 12681
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v3

    .line 12682
    .local v3, "uidList":[I
    const/4 v0, 0x0

    .line 12683
    .local v0, "appDevice":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 12684
    aget v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    .line 12685
    if-eqz v0, :cond_1

    const v4, 0x8000

    if-eq v0, v4, :cond_1

    .line 12686
    move v1, v0

    .line 12691
    .end local v0    # "appDevice":I
    .end local v2    # "i":I
    .end local v3    # "uidList":[I
    :cond_0
    return v1

    .line 12683
    .restart local v0    # "appDevice":I
    .restart local v2    # "i":I
    .restart local v3    # "uidList":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPinPackageName(I)Ljava/lang/String;
    .locals 8
    .param p1, "device"    # I

    .prologue
    .line 12713
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12714
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12715
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12716
    .local v5, "uid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12717
    .local v3, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 12719
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 12720
    :catch_0
    move-exception v0

    .line 12721
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12725
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .end local v5    # "uid":I
    :cond_1
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public getUidList()[I
    .locals 10

    .prologue
    const v9, 0x8000

    const/4 v8, 0x0

    .line 12652
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v4, v7, [I

    .line 12654
    .local v4, "list":[I
    const/4 v2, 0x0

    .line 12655
    .local v2, "i":I
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 12656
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12657
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 12658
    .local v6, "uid":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12659
    .local v3, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 12660
    aput v6, v4, v2

    .line 12661
    const/4 v2, 0x1

    .line 12666
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .end local v6    # "uid":I
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12667
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 12668
    .restart local v6    # "uid":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12669
    .restart local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 12670
    aput v6, v4, v2

    .line 12671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12675
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .end local v6    # "uid":I
    :cond_3
    return-object v4
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 12478
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "isEanbled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12479
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    return v0
.end method

.method public removeItem(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 12752
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12753
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12754
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12755
    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12756
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    .line 12757
    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V

    .line 12758
    const/4 v0, 0x1

    return v0

    .line 12760
    :cond_0
    return v3
.end method

.method public resetByAudioServerDied()V
    .locals 8

    .prologue
    .line 12737
    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "resetByAudioServerDied"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12739
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 12740
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12741
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12742
    .local v5, "uid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v0

    .line 12743
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v3

    .line 12744
    .local v3, "ratio":I
    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12745
    invoke-direct {p0, v5, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    goto :goto_0

    .line 12748
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v3    # "ratio":I
    .end local v5    # "uid":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V

    .line 12736
    return-void
.end method

.method public setAppDevice(II)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .prologue
    const v11, 0x8000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 12520
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12522
    .local v3, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-ne v7, p2, :cond_0

    .line 12523
    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "same device pin."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12524
    return-void

    .line 12527
    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v11, :cond_3

    .line 12529
    const/4 v6, -0x1

    .line 12530
    .local v6, "uidToRemove":I
    const/4 v4, 0x0

    .line 12531
    .local v4, "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 12532
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12533
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 12534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12536
    .local v4, "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 12539
    if-eq p1, v6, :cond_1

    .line 12540
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, v6}, Lcom/android/server/audio/AudioService;->-wrap52(Lcom/android/server/audio/AudioService;I)V

    .line 12542
    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12546
    :goto_0
    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V

    .line 12547
    invoke-direct {p0, v6, v10}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12548
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    .line 12552
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v4    # "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    .line 12556
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    .end local v6    # "uidToRemove":I
    :cond_3
    if-nez v3, :cond_4

    .line 12557
    new-instance v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .end local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    const/16 v7, 0x64

    invoke-direct {v3, p0, p2, v7, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    .line 12561
    .restart local v3    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :goto_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12563
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    .line 12565
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    .line 12519
    return-void

    .line 12543
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    .restart local v6    # "uidToRemove":I
    :catch_0
    move-exception v0

    .line 12544
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in Thread.sleep() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12559
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "itemToRemove":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;>;>;"
    .end local v6    # "uidToRemove":I
    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V

    goto :goto_1
.end method

.method public setAppVolume(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    const/4 v3, 0x0

    .line 12614
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12616
    .local v0, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-nez v0, :cond_0

    .line 12617
    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .end local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    invoke-direct {v0, p0, v3, p2, v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    .line 12621
    .restart local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12623
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    .line 12625
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    .line 12613
    return-void

    .line 12619
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppVolume(I)V

    goto :goto_0
.end method

.method public setMaxLimitedSpkVolume(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 12637
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .line 12639
    .local v0, "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    if-nez v0, :cond_0

    .line 12640
    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    .end local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIZ)V

    .line 12644
    .restart local v0    # "item":Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12646
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    .line 12648
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V

    .line 12636
    return-void

    .line 12642
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setMaxLimitedSpkVolume(Z)V

    goto :goto_0
.end method
