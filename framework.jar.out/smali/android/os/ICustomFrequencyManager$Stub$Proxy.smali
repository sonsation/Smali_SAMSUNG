.class Landroid/os/ICustomFrequencyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager$Stub;
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
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 750
    return-void
.end method


# virtual methods
.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "freqLevel"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1304
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    return-void

    .line 1308
    :catchall_0
    move-exception v2

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    throw v2
.end method

.method public acquireGovernorParameter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "param"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    if-eqz p1, :cond_0

    .line 1839
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1845
    :goto_0
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    return-void

    .line 1843
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1848
    :catchall_0
    move-exception v2

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw v2
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "callingId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1339
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1329
    return-void

    .line 1342
    :catchall_0
    move-exception v2

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    throw v2
.end method

.method public acquireSiopMaxlock(II)V
    .locals 5
    .param p1, "cpuFreq"    # I
    .param p2, "gpuFreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    return-void

    .line 1536
    :catchall_0
    move-exception v2

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1536
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkCPUBoostRange(I)Z
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1273
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    return v2

    .line 1270
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1272
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1272
    throw v3
.end method

.method public checkFrameRateRange(I)Z
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 932
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    return v2

    .line 929
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 931
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw v3
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 792
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    return v2

    .line 789
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 791
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    throw v3
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 855
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 862
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 865
    return v2

    .line 859
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 861
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v3
.end method

.method public deleteBatteryStatsDatabase()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1597
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1598
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1603
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    return v2

    .line 1600
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1602
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1602
    throw v3
.end method

.method public disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1073
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1076
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    .line 1079
    :catchall_0
    move-exception v2

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    throw v2
.end method

.method public disableCpuCtl(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1252
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    return-void

    .line 1255
    :catchall_0
    move-exception v2

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    throw v2
.end method

.method public disableCpuSet(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1219
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    return-void

    .line 1223
    :catchall_0
    move-exception v2

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1223
    throw v2
.end method

.method public disableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1155
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1148
    return-void

    .line 1159
    :catchall_0
    move-exception v2

    .line 1160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1159
    throw v2
.end method

.method public disableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1124
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    return-void

    .line 1127
    :catchall_0
    move-exception v2

    .line 1128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1127
    throw v2
.end method

.method public disablePCIePSMDisable(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1188
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1180
    return-void

    .line 1191
    :catchall_0
    move-exception v2

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    throw v2
.end method

.method public enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1091
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1092
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    return-void

    .line 1095
    :catchall_0
    move-exception v2

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1095
    throw v2
.end method

.method public enableCpuCtl(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    return-void

    .line 1239
    :catchall_0
    move-exception v2

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1239
    throw v2
.end method

.method public enableCpuSet(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1204
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1196
    return-void

    .line 1207
    :catchall_0
    move-exception v2

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1207
    throw v2
.end method

.method public enableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1132
    return-void

    .line 1143
    :catchall_0
    move-exception v2

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    throw v2
.end method

.method public enableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1108
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1100
    return-void

    .line 1111
    :catchall_0
    move-exception v2

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1111
    throw v2
.end method

.method public enablePCIePSMDisable(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1172
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    return-void

    .line 1175
    :catchall_0
    move-exception v2

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    throw v2
.end method

.method public getAbusiveAppList()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1668
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1673
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    return-object v2

    .line 1672
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1672
    throw v3
.end method

.method public getBatteryDeltaSum(I)I
    .locals 6
    .param p1, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1621
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1624
    return v2

    .line 1620
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    throw v3
.end method

.method public getBatteryRemainingUsageTime(I)I
    .locals 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1568
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    return v2

    .line 1567
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1567
    throw v3
.end method

.method public getBatteryStatistics(I)[B
    .locals 6
    .param p1, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1586
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1589
    return-object v2

    .line 1585
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 1586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    throw v3
.end method

.method public getBatteryTotalCapacity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1633
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1638
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    return v2

    .line 1637
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1637
    throw v3
.end method

.method public getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1686
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1689
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1699
    return-object v2

    .line 1692
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/Intent;
    goto :goto_0

    .line 1695
    .end local v2    # "_result":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    .line 1696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    throw v3
.end method

.method public getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "numOfItems"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1802
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1803
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1809
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1812
    return-object v2

    .line 1808
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    throw v3
.end method

.method public getGameThrottlingLevel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1743
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    return v2

    .line 1742
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    const-string/jumbo v0, "android.os.ICustomFrequencyManager"

    return-object v0
.end method

.method public getLeastRecentlyUsedAppList(I)[Ljava/lang/String;
    .locals 6
    .param p1, "numOfItems"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1827
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    return-object v2

    .line 1826
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw v3
.end method

.method public getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1651
    iget-object v4, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x36

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1656
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    return-wide v2

    .line 1655
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1655
    throw v4
.end method

.method public getSsrmStatus(I)I
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1456
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    return v2

    .line 1455
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1455
    throw v3
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1485
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1490
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1493
    return v2

    .line 1489
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    throw v3
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1468
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1473
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1476
    return v2

    .line 1472
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    throw v3
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1024
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1028
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    return-object v2

    .line 1027
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    throw v3
.end method

.method public getSupportedCPUFrequency()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1287
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1290
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1293
    return-object v2

    .line 1289
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    throw v3
.end method

.method public getSupportedGPUFrequency()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 774
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 777
    return-object v2

    .line 773
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v3
.end method

.method public getSupportedLCDFrequency()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 909
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 914
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 917
    return-object v2

    .line 913
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    throw v3
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 844
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    return-object v2

    .line 843
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 843
    throw v3
.end method

.method public initSiopMaxlock(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1515
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1517
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1510
    return-void

    .line 1520
    :catchall_0
    move-exception v2

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1520
    throw v2
.end method

.method public mpdUpdate(I)V
    .locals 5
    .param p1, "mpEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1006
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    return-void

    .line 1011
    :catchall_0
    move-exception v2

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1011
    throw v2
.end method

.method public notifyWmAniationState(JZ)V
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1402
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    return-void

    .line 1406
    :catchall_0
    move-exception v2

    .line 1407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    throw v2
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1059
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    return-void

    .line 1063
    :catchall_0
    move-exception v2

    .line 1064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw v2
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1321
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1313
    return-void

    .line 1324
    :catchall_0
    move-exception v2

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1324
    throw v2
.end method

.method public releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 818
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 823
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    return-void

    .line 827
    :catchall_0
    move-exception v2

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v2
.end method

.method public releaseGovernorParameter()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1859
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    return-void

    .line 1862
    :catchall_0
    move-exception v2

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1862
    throw v2
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .locals 5
    .param p1, "callingId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1355
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1347
    return-void

    .line 1358
    :catchall_0
    move-exception v2

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1358
    throw v2
.end method

.method public releaseSiopMaxlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1547
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    return-void

    .line 1550
    :catchall_0
    move-exception v2

    .line 1551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1550
    throw v2
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 893
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    return-void

    .line 897
    :catchall_0
    move-exception v2

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    throw v2
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "coreNum"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1042
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1033
    return-void

    .line 1046
    :catchall_0
    move-exception v2

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    throw v2
.end method

.method public requestCPUUpdate(II)V
    .locals 5
    .param p1, "cpu"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    return-void

    .line 996
    :catchall_0
    move-exception v2

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 996
    throw v2
.end method

.method public requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "freqLevel"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 800
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 806
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    return-void

    .line 810
    :catchall_0
    move-exception v2

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    throw v2
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "frameRate"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 942
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 945
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    return-void

    .line 949
    :catchall_0
    move-exception v2

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v2
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "burstRate"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1371
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    return-void

    .line 1375
    :catchall_0
    move-exception v2

    .line 1376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    throw v2
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    return-void

    .line 980
    :catchall_0
    move-exception v2

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    throw v2
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "freqLevel"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 876
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 867
    return-void

    .line 880
    :catchall_0
    move-exception v2

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 880
    throw v2
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 961
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    return-void

    .line 965
    :catchall_0
    move-exception v2

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    throw v2
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1387
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    return-void

    .line 1390
    :catchall_0
    move-exception v2

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1390
    throw v2
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    return-void

    .line 1438
    :catchall_0
    move-exception v2

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    throw v2
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    return-void

    .line 1422
    :catchall_0
    move-exception v2

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    throw v2
.end method

.method public setGameFps(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1716
    return-void

    .line 1726
    :catchall_0
    move-exception v2

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    throw v2
.end method

.method public setGamePowerSaving(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1707
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1701
    return-void

    .line 1711
    :catchall_0
    move-exception v2

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1711
    throw v2
.end method

.method public setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1772
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1763
    return-void

    .line 1775
    :catchall_0
    move-exception v2

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    throw v2
.end method

.method public setGameTurboMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1754
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    return-void

    .line 1758
    :catchall_0
    move-exception v2

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    throw v2
.end method

.method public setHglPolicy(Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1502
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    return-void

    .line 1505
    :catchall_0
    move-exception v2

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    throw v2
.end method

.method public unsetGameTouchParam()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.os.ICustomFrequencyManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1786
    iget-object v2, p0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    return-void

    .line 1789
    :catchall_0
    move-exception v2

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1789
    throw v2
.end method
