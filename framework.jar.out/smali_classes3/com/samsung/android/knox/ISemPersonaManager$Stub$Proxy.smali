.class Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemPersonaManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    iput-object p1, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1842
    return-void
.end method


# virtual methods
.method public addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2828
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2819
    return-void

    .line 2831
    :catchall_0
    move-exception v2

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2831
    throw v2
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "origDrawable"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2478
    if-eqz p1, :cond_0

    .line 2479
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2485
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2488
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    return-object v2

    .line 2483
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2494
    :catchall_0
    move-exception v3

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2494
    throw v3

    .line 2491
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2925
    return-void

    .line 2936
    :catchall_0
    move-exception v2

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2936
    throw v2
.end method

.method public addPackageToNonSecureAppList(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4368
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4361
    return-void

    .line 4371
    :catchall_0
    move-exception v2

    .line 4372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    throw v2
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2756
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2761
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    return v2

    .line 2758
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2760
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw v3
.end method

.method public adminUnLockPersona(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2774
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2779
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    return v2

    .line 2776
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2778
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public canAccess(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3871
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3873
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3876
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3879
    return v2

    .line 3873
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3875
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3875
    throw v3
.end method

.method public clearAppListForPersona(Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2872
    return-void

    .line 2883
    :catchall_0
    move-exception v2

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2883
    throw v2
.end method

.method public clearNonSecureAppList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4399
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4393
    return-void

    .line 4402
    :catchall_0
    move-exception v2

    .line 4403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4402
    throw v2
.end method

.method public convertContainerType(II)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3388
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3380
    return-void

    .line 3391
    :catchall_0
    move-exception v2

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    throw v2
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "setupWizardApkUri"    # Landroid/net/Uri;
    .param p8, "mdmSecretKey"    # Ljava/lang/String;
    .param p9, "lockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2031
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2034
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2038
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2040
    if-eqz p7, :cond_0

    .line 2041
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2047
    :goto_0
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2048
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    iget-object v4, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2050
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2051
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2054
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2057
    return v3

    .line 2045
    .end local v3    # "_result":I
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2053
    :catchall_0
    move-exception v4

    .line 2054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2053
    throw v4
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3104
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3105
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3106
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3109
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3112
    return v2

    .line 3106
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3108
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3108
    throw v3
.end method

.method public doWhenUnlock(ILcom/samsung/android/knox/SemIUnlockAction;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "r"    # Lcom/samsung/android/knox/SemIUnlockAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3321
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/knox/SemIUnlockAction;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3322
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3314
    return-void

    .line 3325
    :catchall_0
    move-exception v2

    .line 3326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    throw v2
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3122
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3127
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3130
    return v2

    .line 3124
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3126
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3126
    throw v3
.end method

.method public exists(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2210
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2213
    return v2

    .line 2207
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2209
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    throw v3
.end method

.method public fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;
    .locals 6
    .param p1, "event"    # Landroid/content/pm/PersonaNewEvent;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1934
    if-eqz p1, :cond_0

    .line 1935
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PersonaNewEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1941
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1945
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1955
    return-object v2

    .line 1939
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1951
    :catchall_0
    move-exception v3

    .line 1952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1951
    throw v3

    .line 1948
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Lcom/samsung/android/knox/SemPersonaState;
    goto :goto_1
.end method

.method public getAdminUidForPersona(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2598
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2603
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2606
    return v2

    .line 2602
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    throw v3
.end method

.method public getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2862
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2867
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    return-object v2

    .line 2866
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2866
    throw v3
.end method

.method public getAppPackageNamesAllWhiteLists(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4716
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4718
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4721
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4724
    return-object v2

    .line 4720
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4720
    throw v3
.end method

.method public getContainerAppIcon(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4594
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4596
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4599
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4602
    return-object v2

    .line 4598
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4598
    throw v3
.end method

.method public getContainerHideUsageStatsApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4351
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4353
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4356
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4359
    return-object v2

    .line 4355
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4355
    throw v3
.end method

.method public getContainerName(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4538
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x93

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4540
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4543
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4546
    return-object v2

    .line 4542
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4542
    throw v3
.end method

.method public getContainerOrder(I)I
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4663
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4665
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4668
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4671
    return v2

    .line 4667
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4667
    throw v3
.end method

.method public getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4292
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4297
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4300
    return v2

    .line 4296
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4296
    throw v3
.end method

.method public getDefaultQuickSettings()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4309
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4311
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4314
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4317
    return-object v2

    .line 4313
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4313
    throw v3
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3085
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3087
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3091
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    return-object v2

    .line 3090
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    throw v3
.end method

.method public getECBadge(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4484
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4486
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4489
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4492
    return-object v2

    .line 4488
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4488
    throw v3
.end method

.method public getECIcon(I)[B
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4502
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4507
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4510
    return-object v2

    .line 4506
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4506
    throw v3
.end method

.method public getECName(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4466
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4471
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4474
    return-object v2

    .line 4470
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4470
    throw v3
.end method

.method public getFidoRpContext(I)Ljava/lang/String;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4612
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4614
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4617
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4620
    return-object v2

    .line 4616
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    throw v3
.end method

.method public getFingerCount(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3748
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3753
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3756
    return v2

    .line 3752
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    throw v3
.end method

.method public getFingerprintHash(I)Ljava/util/List;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4221
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4223
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4226
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4229
    return-object v2

    .line 4225
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4225
    throw v3
.end method

.method public getFingerprintIndex(I)[I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4203
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4205
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4208
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    return-object v2

    .line 4207
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 4208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4207
    throw v3
.end method

.method public getFocusedUser()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3938
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3939
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3944
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3947
    return v2

    .line 3943
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3943
    throw v3
.end method

.method public getForegroundUser()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3922
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3927
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3930
    return v2

    .line 3926
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3926
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    const-string/jumbo v0, "com.samsung.android.knox.ISemPersonaManager"

    return-object v0
.end method

.method public getIsAdminLockedJustBefore(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3680
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3685
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3688
    return v2

    .line 3682
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3684
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    throw v3
.end method

.method public getIsFingerAsSupplement(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3404
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3409
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3412
    return v2

    .line 3406
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3408
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3408
    throw v3
.end method

.method public getIsFingerIdentifyFailed(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3719
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    return v2

    .line 3716
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3718
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3718
    throw v3
.end method

.method public getIsFingerReset(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3617
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    return v2

    .line 3614
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3616
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3616
    throw v3
.end method

.method public getIsFingerTimeout(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3544
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3549
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3552
    return v2

    .line 3546
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3548
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3548
    throw v3
.end method

.method public getIsIrisReset(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3646
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3651
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3654
    return v2

    .line 3648
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3650
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    throw v3
.end method

.method public getIsIrisTimeout(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3578
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3583
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3586
    return v2

    .line 3580
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3582
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    throw v3
.end method

.method public getIsQuickAccessUIEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3508
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3513
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3516
    return v2

    .line 3510
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3512
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3512
    throw v3
.end method

.method public getIsUnlockedAfterTurnOn(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3472
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3477
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    return v2

    .line 3474
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3476
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3476
    throw v3
.end method

.method public getKeyguardShowState(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3338
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3343
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3346
    return v2

    .line 3340
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3342
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3342
    throw v3
.end method

.method public getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4080
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4082
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4083
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4085
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4095
    return-object v2

    .line 4088
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 4091
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4091
    throw v3
.end method

.method public getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4123
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4125
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4126
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4133
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4136
    return-object v2

    .line 4129
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 4132
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 4133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4132
    throw v3
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4063
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4068
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4071
    return-object v2

    .line 4067
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    throw v3
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4105
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4107
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4110
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4113
    return-object v2

    .line 4109
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4109
    throw v3
.end method

.method public getKnoxSecurityTimeout(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3884
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3889
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3891
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3894
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3897
    return v2

    .line 3893
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3893
    throw v3
.end method

.method public getLastKeyguardUnlockTime(I)J
    .locals 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3438
    iget-object v4, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x55

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3443
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    return-wide v2

    .line 3442
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3442
    throw v4
.end method

.method public getMoveToKnoxStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2355
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2360
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2363
    return v2

    .line 2357
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2359
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2359
    throw v3
.end method

.method public getMyknoxId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4576
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4581
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4584
    return v2

    .line 4580
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4580
    throw v3
.end method

.method public getNonSecureAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4383
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4385
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4388
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4391
    return-object v2

    .line 4387
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4387
    throw v3
.end method

.method public getNormalizedState(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2428
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    return v2

    .line 2427
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2427
    throw v3
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4328
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4329
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4332
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4339
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4342
    return-object v2

    .line 4335
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 4338
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v3

    .line 4339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4338
    throw v3
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2979
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2982
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2984
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2985
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2986
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2989
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2992
    return-object v2

    .line 2988
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    throw v3
.end method

.method public getParentId(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2328
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2331
    return v2

    .line 2327
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    throw v3
.end method

.method public getParentUserForCurrentPersona()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2265
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    return v2

    .line 2264
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2264
    throw v3
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3155
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3157
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3160
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    return-object v2

    .line 3159
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3159
    throw v3
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget-object v4, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 2513
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2516
    return-wide v2

    .line 2512
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2512
    throw v4
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2302
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2303
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2313
    return-object v2

    .line 2306
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 2309
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 2310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2309
    throw v3
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2585
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2588
    return-object v2

    .line 2584
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2584
    throw v3
.end method

.method public getPersonaIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2791
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2796
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2799
    return-object v2

    .line 2795
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    throw v3
.end method

.method public getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2185
    sget-object v3, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2195
    return-object v2

    .line 2188
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/samsung/android/knox/SemPersonaInfo;
    goto :goto_0

    .line 2191
    .end local v2    # "_result":Lcom/samsung/android/knox/SemPersonaInfo;
    :catchall_0
    move-exception v3

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    throw v3
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2648
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2651
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2658
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    return-object v2

    .line 2657
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2657
    throw v3
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2394
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2397
    return-object v2

    .line 2393
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2393
    throw v3
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2163
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2166
    sget-object v3, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2169
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    return-object v2

    .line 2168
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catchall_0
    move-exception v3

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    throw v3
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 6
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2245
    sget-object v3, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2248
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    return-object v2

    .line 2247
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catchall_0
    move-exception v3

    .line 2248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2247
    throw v3
.end method

.method public getPersonasForUser(IZ)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2226
    sget-object v3, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2229
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    return-object v2

    .line 2228
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catchall_0
    move-exception v3

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw v3
.end method

.method public getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1890
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1900
    return-object v2

    .line 1893
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/samsung/android/knox/SemPersonaState;
    goto :goto_0

    .line 1896
    .end local v2    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :catchall_0
    move-exception v3

    .line 1897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1896
    throw v3
.end method

.method public getScreenOffTime(I)J
    .locals 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3018
    iget-object v4, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3020
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3023
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    return-wide v2

    .line 3022
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3022
    throw v4
.end method

.method public getSecureFolderId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4446
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4448
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4451
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4454
    return v2

    .line 4450
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4450
    throw v3
.end method

.method public getState(I)Lcom/samsung/android/knox/SemPersonaState;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1867
    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    return-object v2

    .line 1870
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/samsung/android/knox/SemPersonaState;
    goto :goto_0

    .line 1873
    .end local v2    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :catchall_0
    move-exception v3

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw v3
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2686
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2687
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    sget-object v3, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2692
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    return-object v2

    .line 2691
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :catchall_0
    move-exception v3

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    throw v3
.end method

.method public handleHomeShow()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2719
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2724
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    return v2

    .line 2721
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2723
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw v3
.end method

.method public handleNotificationWhenUnlock(ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "activityOptions"    # Landroid/os/Bundle;
    .param p4, "notificationKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4757
    if-eqz p2, :cond_0

    .line 4758
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4759
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4764
    :goto_0
    if-eqz p3, :cond_1

    .line 4765
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4766
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4771
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4772
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4750
    return-void

    .line 4762
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4775
    :catchall_0
    move-exception v2

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4775
    throw v2

    .line 4769
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public hideScrim()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3372
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3366
    return-void

    .line 3375
    :catchall_0
    move-exception v2

    .line 3376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    throw v2
.end method

.method public inState(Lcom/samsung/android/knox/SemPersonaState;I)Z
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/knox/SemPersonaState;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1909
    if-eqz p1, :cond_0

    .line 1910
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/SemPersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1916
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1922
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    return v2

    .line 1914
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v3

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1921
    throw v3

    .line 1919
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2435
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2442
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2447
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    return v2

    .line 2444
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2446
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    throw v3
.end method

.method public isAttribute(Landroid/content/pm/PersonaAttribute;I)Z
    .locals 6
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1990
    if-eqz p1, :cond_0

    .line 1991
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PersonaAttribute;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1997
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2003
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2006
    return v2

    .line 1995
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2002
    :catchall_0
    move-exception v3

    .line 2003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2002
    throw v3

    .line 2000
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isBootCompleted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4679
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4680
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4685
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4688
    return v2

    .line 4682
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4684
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4684
    throw v3
.end method

.method public isECContainer(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4520
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4522
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4525
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4528
    return v2

    .line 4522
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4524
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4524
    throw v3
.end method

.method public isEnabledFingerprintIndex(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4185
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4190
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4193
    return v2

    .line 4187
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4189
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4189
    throw v3
.end method

.method public isExternalStorageEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4696
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4698
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4703
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4706
    return v2

    .line 4700
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4702
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4702
    throw v3
.end method

.method public isFOTAUpgrade()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2128
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2129
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2134
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    return v2

    .line 2131
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2133
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2133
    throw v3
.end method

.method public isFingerLockscreenActivated(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3800
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3805
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3808
    return v2

    .line 3802
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3804
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3804
    throw v3
.end method

.method public isFingerSupplementActivated(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3782
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3783
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3787
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3790
    return v2

    .line 3784
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3786
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3786
    throw v3
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4414
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4419
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4422
    return v2

    .line 4416
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4418
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4418
    throw v3
.end method

.method public isIrisLockscreenActivated(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3813
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3818
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3823
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3826
    return v2

    .line 3820
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3822
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    throw v3
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3190
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3195
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3198
    return v2

    .line 3192
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3194
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3194
    throw v3
.end method

.method public isKioskModeEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3173
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3178
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    return v2

    .line 3175
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3177
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3177
    throw v3
.end method

.method public isKnoxKeyguardShown(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3356
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3361
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3364
    return v2

    .line 3358
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3360
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3360
    throw v3
.end method

.method public isKnoxMultiWindowExist()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4645
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4650
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4653
    return v2

    .line 4647
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4649
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4649
    throw v3
.end method

.method public isNFCAllowed(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4148
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4149
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4153
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4156
    return v2

    .line 4150
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4152
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4152
    throw v3
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2966
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2971
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2974
    return v2

    .line 2968
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2970
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2970
    throw v3
.end method

.method public isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4559
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4564
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4567
    return v2

    .line 4561
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4563
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4563
    throw v3
.end method

.method public isResetPersonaOnRebootEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3277
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3280
    return v2

    .line 3274
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3276
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    throw v3
.end method

.method public isSessionExpired(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2742
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    return v2

    .line 2739
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2741
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    throw v3
.end method

.method public launchPersonaHome(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2096
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2099
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2102
    return v2

    .line 2096
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2098
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    throw v3
.end method

.method public lockPersona(I)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    return-void

    .line 2707
    :catchall_0
    move-exception v2

    .line 2708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    throw v2
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    if-eqz p2, :cond_0

    .line 2616
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2622
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    return-void

    .line 2620
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2625
    :catchall_0
    move-exception v2

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    throw v2
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "dstPath"    # Ljava/lang/String;
    .param p4, "excludeMediaTypes"    # I
    .param p5, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3991
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3996
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3999
    return v2

    .line 3993
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3995
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3995
    throw v3
.end method

.method public needToSkipResetOnReboot()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2146
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2151
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2154
    return v2

    .line 2148
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2150
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2150
    throw v3
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3305
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3298
    return-void

    .line 3309
    :catchall_0
    move-exception v2

    .line 3310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3309
    throw v2
.end method

.method public onKeyguardBackPressed(I)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3967
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3971
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3964
    return-void

    .line 3974
    :catchall_0
    move-exception v2

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3974
    throw v2
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 5
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3067
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3068
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3069
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    return-void

    .line 3072
    :catchall_0
    move-exception v2

    .line 3073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3072
    throw v2
.end method

.method public refreshTimer(I)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3035
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3028
    return-void

    .line 3038
    :catchall_0
    move-exception v2

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3038
    throw v2
.end method

.method public registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    .locals 6
    .param p1, "mKnoxModeChangeObserver"    # Landroid/content/pm/IKnoxModeChangeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2525
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IKnoxModeChangeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2526
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2531
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2534
    return v2

    .line 2528
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2530
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2530
    throw v3
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 6
    .param p1, "mISystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2543
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/ISystemPersonaObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2544
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2549
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2552
    return v2

    .line 2546
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2548
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2548
    throw v3
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 6
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2017
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/pm/IPersonaCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2018
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2023
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2026
    return v2

    .line 2020
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2022
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2022
    throw v3
.end method

.method public removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2836
    return-void

    .line 2848
    :catchall_0
    move-exception v2

    .line 2849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    throw v2
.end method

.method public removeKnoxAppsinFota(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4431
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4424
    return-void

    .line 4434
    :catchall_0
    move-exception v2

    .line 4435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4434
    throw v2
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2944
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2948
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2949
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    return-void

    .line 2952
    :catchall_0
    move-exception v2

    .line 2953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    throw v2
.end method

.method public removePersona(I)I
    .locals 6
    .param p1, "personaHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2117
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2120
    return v2

    .line 2116
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    throw v3
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 6
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2915
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2920
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return v2

    .line 2917
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2919
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    throw v3
.end method

.method public resetPersona(I)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2562
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2567
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2570
    return v2

    .line 2566
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2566
    throw v3
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3230
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3233
    return v2

    .line 3227
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3229
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3229
    throw v3
.end method

.method public resetPersonaPassword(ILjava/lang/String;I)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "pwdResetToken"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4258
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4249
    return-void

    .line 4261
    :catchall_0
    move-exception v2

    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4261
    throw v2
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2897
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2902
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2905
    return v2

    .line 2899
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2901
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2901
    throw v3
.end method

.method public setAccessPermission(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "canAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3852
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3853
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3845
    return-void

    .line 3857
    :catchall_0
    move-exception v2

    .line 3858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3857
    throw v2
.end method

.method public setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    .locals 6
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1964
    if-eqz p1, :cond_0

    .line 1965
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PersonaAttribute;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1971
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 1978
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    return v2

    .line 1969
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1977
    :catchall_0
    move-exception v3

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1977
    throw v3

    :cond_1
    move v3, v4

    .line 1971
    goto :goto_1

    .line 1975
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public setBackPressed(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3207
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3208
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3200
    return-void

    .line 3211
    :catchall_0
    move-exception v2

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3211
    throw v2
.end method

.method public setFidoRpContext(ILjava/lang/String;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "rpContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4630
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4622
    return-void

    .line 4633
    :catchall_0
    move-exception v2

    .line 4634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4633
    throw v2
.end method

.method public setFingerCount(II)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "fingerCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3763
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3766
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3758
    return-void

    .line 3769
    :catchall_0
    move-exception v2

    .line 3770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    throw v2
.end method

.method public setFingerprintHash(ILjava/util/List;)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4233
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4239
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4231
    return-void

    .line 4242
    :catchall_0
    move-exception v2

    .line 4243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4242
    throw v2
.end method

.method public setFingerprintIndex(IZ[I)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4169
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4160
    return-void

    .line 4172
    :catchall_0
    move-exception v2

    .line 4173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4172
    throw v2
.end method

.method public setFocusedUser(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3956
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3949
    return-void

    .line 3959
    :catchall_0
    move-exception v2

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3959
    throw v2
.end method

.method public setFsMountState(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3139
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3140
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    return-void

    .line 3143
    :catchall_0
    move-exception v2

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3143
    throw v2
.end method

.method public setIsAdminLockedJustBefore(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isAdminLockedJustBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3697
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3698
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3690
    return-void

    .line 3701
    :catchall_0
    move-exception v2

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    throw v2
.end method

.method public setIsFingerAsSupplement(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3421
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    return-void

    .line 3425
    :catchall_0
    move-exception v2

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3425
    throw v2
.end method

.method public setIsFingerIdentifyFailed(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isFingerIdentifyFailed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3731
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3724
    return-void

    .line 3735
    :catchall_0
    move-exception v2

    .line 3736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3735
    throw v2
.end method

.method public setIsFingerReset(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isFingerReset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3629
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3630
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3622
    return-void

    .line 3633
    :catchall_0
    move-exception v2

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3633
    throw v2
.end method

.method public setIsFingerTimeout(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isFingerTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3561
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3554
    return-void

    .line 3565
    :catchall_0
    move-exception v2

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw v2
.end method

.method public setIsIrisReset(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isIrisReset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3663
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3664
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3656
    return-void

    .line 3667
    :catchall_0
    move-exception v2

    .line 3668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3667
    throw v2
.end method

.method public setIsIrisTimeout(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isIrisTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3595
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3596
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3588
    return-void

    .line 3599
    :catchall_0
    move-exception v2

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3599
    throw v2
.end method

.method public setIsQuickAccessUIEnabled(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isEnabledBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3518
    return-void

    .line 3529
    :catchall_0
    move-exception v2

    .line 3530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3529
    throw v2
.end method

.method public setIsUnlockedAfterTurnOn(IZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "isUnlockBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3482
    return-void

    .line 3493
    :catchall_0
    move-exception v2

    .line 3494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3493
    throw v2
.end method

.method public setKnoxBackupPin(ILjava/lang/String;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4046
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4038
    return-void

    .line 4049
    :catchall_0
    move-exception v2

    .line 4050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4049
    throw v2
.end method

.method public setKnoxSecurityTimeout(II)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3907
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3899
    return-void

    .line 3910
    :catchall_0
    move-exception v2

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3910
    throw v2
.end method

.method public setLastKeyguardUnlockTime(IJ)V
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "lastKeyguardUnlockTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3456
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3448
    return-void

    .line 3459
    :catchall_0
    move-exception v2

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3459
    throw v2
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3001
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3002
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2994
    return-void

    .line 3005
    :catchall_0
    move-exception v2

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3005
    throw v2
.end method

.method public setMoveToKnoxStatus(Z)V
    .locals 5
    .param p1, "isProgressing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2339
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    return-void

    .line 2343
    :catchall_0
    move-exception v2

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2343
    throw v2
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    if-eqz p2, :cond_0

    .line 2278
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2284
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    return-void

    .line 2282
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2287
    :catchall_0
    move-exception v2

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    throw v2
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2373
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    return-void

    .line 2376
    :catchall_0
    move-exception v2

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2376
    throw v2
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2671
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    return-void

    .line 2674
    :catchall_0
    move-exception v2

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2674
    throw v2
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2407
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2399
    return-void

    .line 2410
    :catchall_0
    move-exception v2

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2410
    throw v2
.end method

.method public setShownHelp(IIZ)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3835
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3836
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3837
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    return-void

    .line 3840
    :catchall_0
    move-exception v2

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3840
    throw v2
.end method

.method public settingSyncAllowed(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2809
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2814
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    return v2

    .line 2811
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2813
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    throw v3
.end method

.method public setupComplete(I)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4275
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    return-void

    .line 4278
    :catchall_0
    move-exception v2

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4278
    throw v2
.end method

.method public showKeyguard(II)V
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    return-void

    .line 3293
    :catchall_0
    move-exception v2

    .line 3294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3293
    throw v2
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4733
    if-eqz p1, :cond_0

    .line 4734
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4735
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4740
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4745
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4748
    return v2

    .line 4738
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4744
    :catchall_0
    move-exception v3

    .line 4745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4744
    throw v3

    .line 4742
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    if-eqz p2, :cond_0

    .line 2070
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2076
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2081
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2084
    return v2

    .line 2074
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2080
    :catchall_0
    move-exception v3

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2080
    throw v3

    .line 2078
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2454
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2461
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2466
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    return v2

    .line 2465
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw v3
.end method

.method public unmarkForRemoval(I)V
    .locals 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2630
    return-void

    .line 2640
    :catchall_0
    move-exception v2

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2640
    throw v2
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dstPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4009
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4014
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4017
    return v2

    .line 4011
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4013
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4013
    throw v3
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3251
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3252
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3257
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3260
    return v2

    .line 3254
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3256
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    throw v3
.end method

.method public userActivity(I)V
    .locals 5
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    iget-object v2, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    return-void

    .line 3053
    :catchall_0
    move-exception v2

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3053
    throw v2
.end method

.method public verifyKnoxBackupPin(ILjava/lang/String;)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4022
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4027
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4028
    iget-object v3, p0, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4033
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4036
    return v2

    .line 4030
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4032
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4032
    throw v3
.end method
