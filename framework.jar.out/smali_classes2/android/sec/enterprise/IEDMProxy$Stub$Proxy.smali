.class Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy$Stub;
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
    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    iput-object p1, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1454
    return-void
.end method


# virtual methods
.method public AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2670
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2673
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    return-void

    .line 2676
    :catchall_0
    move-exception v2

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2676
    throw v2
.end method

.method public AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2684
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2688
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2689
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2691
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2694
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    return-void

    .line 2697
    :catchall_0
    move-exception v2

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    throw v2
.end method

.method public AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2709
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2711
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2714
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2702
    return-void

    .line 2717
    :catchall_0
    move-exception v2

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2717
    throw v2
.end method

.method public AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2727
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2729
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    return-void

    .line 2738
    :catchall_0
    move-exception v2

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2738
    throw v2
.end method

.method public addCallsCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "callType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1473
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    return-void

    .line 1476
    :catchall_0
    move-exception v2

    .line 1477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1476
    throw v2
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2024
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2029
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    return v2

    .line 2026
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2028
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2028
    throw v3
.end method

.method public addNumberOfIncomingSms()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2074
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2075
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2080
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    return v2

    .line 2077
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2079
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    throw v3
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2046
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    return v2

    .line 2043
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2045
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2045
    throw v3
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2088
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2091
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2092
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2097
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2100
    return v2

    .line 2094
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2096
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2536
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    return-void

    .line 2539
    :catchall_0
    move-exception v2

    .line 2540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2539
    throw v2
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1971
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1973
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1976
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1979
    return v2

    .line 1973
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1975
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1975
    throw v3
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2145
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2150
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2153
    return v2

    .line 2147
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2149
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2149
    throw v3
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1989
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1994
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1997
    return v2

    .line 1991
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1993
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    throw v3
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2127
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2132
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2135
    return v2

    .line 2129
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2131
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2131
    throw v3
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2114
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    return v2

    .line 2111
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2113
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    throw v3
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2265
    if-eqz p1, :cond_0

    .line 2266
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2267
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2272
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2273
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    return-void

    .line 2270
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2276
    :catchall_0
    move-exception v2

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    throw v2
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3935
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3940
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3943
    return v2

    .line 3937
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3939
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3939
    throw v3
.end method

.method public getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 3861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3867
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3872
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3875
    return-object v2

    .line 3871
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3871
    throw v3
.end method

.method public getAliasesForWiFi()Ljava/util/List;
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
    .line 3896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3901
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3903
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3906
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    return-object v2

    .line 3905
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3905
    throw v3
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1626
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1629
    return v2

    .line 1623
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1625
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    throw v3
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2196
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2201
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    return v2

    .line 2198
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2200
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2200
    throw v3
.end method

.method public getAllowUserProfiles(ZI)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2213
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2220
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    return v2

    .line 2217
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2219
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    throw v3
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;I)[B
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1581
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1584
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1587
    return-object v2

    .line 1583
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    throw v3
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3222
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3224
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3227
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3230
    return-object v2

    .line 3226
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    throw v3
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2627
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2628
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2633
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    return v2

    .line 2630
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2632
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw v3
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2646
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2648
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2653
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2656
    return v2

    .line 2650
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2652
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2652
    throw v3
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2899
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2902
    return v2

    .line 2896
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2898
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2898
    throw v3
.end method

.method public getBlockedNetworks()Ljava/util/List;
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
    .line 2174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2179
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2181
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2184
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2187
    return-object v2

    .line 2183
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2183
    throw v3
.end method

.method public getBrowserSettingStatus(I)Z
    .locals 6
    .param p1, "setting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1783
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    return v2

    .line 1780
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1782
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    throw v3
.end method

.method public getCertificateAliasesHavingPrivateKey()Ljava/util/List;
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
    .line 3913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3917
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3918
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3920
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3923
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3926
    return-object v2

    .line 3922
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3922
    throw v3
.end method

.method public getCertificateChain(Ljava/lang/String;)[B
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3754
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3756
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3759
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3762
    return-object v2

    .line 3758
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 3759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3758
    throw v3
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 3768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3774
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3776
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3779
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3782
    return-object v2

    .line 3778
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3778
    throw v3
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2007
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2012
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    return v2

    .line 2009
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2011
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1464
    const-string/jumbo v0, "android.sec.enterprise.IEDMProxy"

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3619
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3624
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3627
    return v2

    .line 3623
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3623
    throw v3
.end method

.method public getMinimumRequiredSecurity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2249
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2254
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    return v2

    .line 2253
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2253
    throw v3
.end method

.method public getNetworkSSIDList()Ljava/util/List;
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
    .line 2157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2162
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2164
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2167
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2170
    return-object v2

    .line 2166
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2166
    throw v3
.end method

.method public getProKioskHideNotificationMessages()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3386
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    return v2

    .line 3385
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3385
    throw v3
.end method

.method public getProKioskNotificationMessagesState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3369
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    return v2

    .line 3366
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3368
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3368
    throw v3
.end method

.method public getProKioskState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3347
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3352
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3355
    return v2

    .line 3349
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3351
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3351
    throw v3
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2232
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2237
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2240
    return v2

    .line 2234
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2236
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2236
    throw v3
.end method

.method public getSensorDisabled()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3449
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3454
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3457
    return v2

    .line 3453
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3453
    throw v3
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3812
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x83

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3817
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3820
    return-wide v2

    .line 3816
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3816
    throw v4
.end method

.method public getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3831
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x84

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3833
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3836
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3839
    return-wide v2

    .line 3835
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 3836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3835
    throw v4
.end method

.method public getToastEnabledState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3415
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3420
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    return v2

    .line 3417
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3419
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    throw v3
.end method

.method public getToastGravity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3564
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3570
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3573
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3576
    return v2

    .line 3572
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3572
    throw v3
.end method

.method public getToastGravityEnabledState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3551
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3556
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3559
    return v2

    .line 3553
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3555
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3555
    throw v3
.end method

.method public getToastGravityXOffset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3585
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3590
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3593
    return v2

    .line 3589
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3589
    throw v3
.end method

.method public getToastGravityYOffset()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3602
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3604
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3607
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3610
    return v2

    .line 3606
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3606
    throw v3
.end method

.method public getToastShowPackageNameState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3432
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3434
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3437
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3440
    return v2

    .line 3434
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3436
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3436
    throw v3
.end method

.method public getVolumeButtonRotationState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3483
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3488
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3491
    return v2

    .line 3485
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3487
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3487
    throw v3
.end method

.method public getVolumeControlStream()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3398
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3403
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    return v2

    .line 3402
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3402
    throw v3
.end method

.method public getVolumePanelEnabledState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3466
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3474
    return v2

    .line 3468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3470
    throw v3
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3534
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3539
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    return v2

    .line 3538
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3538
    throw v3
.end method

.method public getWifiAutoSwitchState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3505
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3508
    return v2

    .line 3502
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3504
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3504
    throw v3
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3517
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3522
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3525
    return v2

    .line 3521
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3521
    throw v3
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
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
    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3203
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3208
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3211
    return-object v2

    .line 3207
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 3208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    throw v3
.end method

.method public getWifiState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3636
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3641
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3644
    return v2

    .line 3638
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3640
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3640
    throw v3
.end method

.method public isAccessControlMethodPassword()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3884
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3886
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3889
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3892
    return v2

    .line 3886
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3888
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3888
    throw v3
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3164
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3165
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3166
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3170
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
    return v2

    .line 3167
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3169
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3169
    throw v3
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3144
    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3145
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3150
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    return v2

    .line 3147
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3149
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3149
    throw v3
.end method

.method public isAndroidBeamAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3125
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3130
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    return v2

    .line 3127
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3129
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3129
    throw v3
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorClass"    # Ljava/lang/String;
    .param p5, "errorReason"    # Ljava/lang/String;
    .param p6, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2556
    if-eqz p6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2562
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2565
    return v2

    .line 2559
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2561
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw v3
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2858
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2864
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2867
    return v2

    .line 2861
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2863
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    throw v3
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2756
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    return v2

    .line 2753
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2755
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    throw v3
.end method

.method public isBTSecureAccessAllowedAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3658
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3662
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3665
    return v2

    .line 3659
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3661
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3661
    throw v3
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2968
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2972
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2975
    return v2

    .line 2969
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2971
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    throw v3
.end method

.method public isBackupAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2591
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2597
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    return v2

    .line 2594
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2596
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2596
    throw v3
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .locals 6
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

    .line 3034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3035
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3040
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    return v2

    .line 3037
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3039
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    throw v3
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3018
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3023
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    return v2

    .line 3020
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3022
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3022
    throw v3
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1692
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1697
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    return v2

    .line 1694
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1696
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    throw v3
.end method

.method public isBluetoothEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1761
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1762
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1765
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    return v2

    .line 1762
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1764
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    throw v3
.end method

.method public isBluetoothLogEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2518
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2519
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2523
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    return v2

    .line 2520
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2522
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2522
    throw v3
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1661
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return v2

    .line 1658
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1660
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    throw v3
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3794
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3799
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3802
    return v2

    .line 3796
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3798
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3798
    throw v3
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3849
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3854
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3857
    return v2

    .line 3851
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3853
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3853
    throw v3
.end method

.method public isCaCertificateTrustedAsUser([BZZI)Z
    .locals 6
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "checkTrusted"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2833
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2836
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2838
    if-eqz p2, :cond_0

    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2840
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2846
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2849
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v5, v4

    .line 2838
    goto :goto_0

    :cond_1
    move v3, v4

    .line 2839
    goto :goto_1

    .line 2843
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2

    .line 2845
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2845
    throw v3
.end method

.method public isCallingCaptureEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1488
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1493
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    return v2

    .line 1490
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1492
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1492
    throw v3
.end method

.method public isCameraEnabled(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1877
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1880
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1881
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1887
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    return v2

    .line 1884
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1886
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw v3
.end method

.method public isChangeRequested()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1800
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    return v2

    .line 1799
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    throw v3
.end method

.method public isClipboardAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

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
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1934
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1937
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1940
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    return v2

    .line 1937
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1939
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1939
    throw v3
.end method

.method public isClipboardShareAllowed()Z
    .locals 6
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

    .line 3000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3001
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3002
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3006
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    return v2

    .line 3003
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3005
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3005
    throw v3
.end method

.method public isCopyContactToSimAllowed(I)Z
    .locals 6
    .param p1, "message"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3242
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3247
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3250
    return v2

    .line 3244
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3246
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3246
    throw v3
.end method

.method public isDateTimeChangeEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2306
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2311
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2314
    return v2

    .line 2308
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2310
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    throw v3
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2609
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2614
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2617
    return v2

    .line 2611
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2613
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2613
    throw v3
.end method

.method public isDiscoverableEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1726
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1731
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    return v2

    .line 1728
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1730
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1730
    throw v3
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2340
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2345
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2348
    return v2

    .line 2342
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2344
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    throw v3
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 6
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2418
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2421
    return v2

    .line 2415
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2417
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2417
    throw v3
.end method

.method public isIncomingMmsAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2574
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2579
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2582
    return v2

    .line 2576
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2578
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    throw v3
.end method

.method public isIncomingSmsAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2465
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2466
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2474
    return v2

    .line 2468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2470
    throw v3
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1592
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1595
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1596
    if-eqz p1, :cond_0

    .line 1597
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1603
    :goto_0
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1608
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1611
    return v2

    .line 1601
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1607
    :catchall_0
    move-exception v3

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1607
    throw v3

    .line 1605
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2984
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2985
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2989
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2992
    return v2

    .line 2986
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2988
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    throw v3
.end method

.method public isKnoxBluetoothEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I
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
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

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

.method public isLimitNumberOfSmsEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2063
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    return v2

    .line 2060
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2062
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2062
    throw v3
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1745
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1748
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    return v2

    .line 1745
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1747
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw v3
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1560
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1565
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1568
    return v2

    .line 1562
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1564
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1564
    throw v3
.end method

.method public isMMSCaptureEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3299
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3302
    return v2

    .line 3296
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3298
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3298
    throw v3
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1952
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1958
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    return v2

    .line 1955
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1957
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1957
    throw v3
.end method

.method public isNFCEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1904
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    return v2

    .line 1901
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1903
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw v3
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1912
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1916
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

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
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    return v2

    .line 1919
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1921
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1921
    throw v3
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3259
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3264
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3267
    return v2

    .line 3261
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3263
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    throw v3
.end method

.method public isNonMarketAppAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1869
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1872
    return v2

    .line 1866
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1868
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1868
    throw v3
.end method

.method public isOcspCheckEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2819
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2820
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2821
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2825
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2828
    return v2

    .line 2822
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2824
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    throw v3
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1643
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    return v2

    .line 1640
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1642
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1642
    throw v3
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2483
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2488
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2491
    return v2

    .line 2485
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2487
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2487
    throw v3
.end method

.method public isPackageAllowedToAccessExternalSdcard(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3733
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3738
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3741
    return v2

    .line 3735
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3737
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3737
    throw v3
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "package_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3675
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3680
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3683
    return v2

    .line 3677
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3679
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3679
    throw v3
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(I)Z
    .locals 6
    .param p1, "calling_Uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3691
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3693
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3698
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    return v2

    .line 3695
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3697
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3697
    throw v3
.end method

.method public isPairingEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1709
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1714
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1717
    return v2

    .line 1711
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1713
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    throw v3
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2448
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2454
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2457
    return v2

    .line 2451
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2453
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2453
    throw v3
.end method

.method public isProfileEnabled(I)Z
    .locals 6
    .param p1, "setting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1679
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    return v2

    .line 1676
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1678
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    throw v3
.end method

.method public isRevocationCheckEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2802
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2803
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2808
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2811
    return v2

    .line 2805
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2807
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2807
    throw v3
.end method

.method public isRoamingPushEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1817
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    return v2

    .line 1814
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1816
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1816
    throw v3
.end method

.method public isRoamingSyncEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1829
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1834
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1837
    return v2

    .line 1831
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1833
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    throw v3
.end method

.method public isSBeamAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3106
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3107
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3112
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    return v2

    .line 3109
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3111
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3111
    throw v3
.end method

.method public isSMSCaptureEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1524
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1526
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1529
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    return v2

    .line 1526
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1528
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    throw v3
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3071
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3072
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3077
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3080
    return v2

    .line 3074
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3076
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3076
    throw v3
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2391
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2397
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2400
    return v2

    .line 2394
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2396
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    throw v3
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2328
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2331
    return v2

    .line 2325
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2327
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    throw v3
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1846
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1852
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    return v2

    .line 1849
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1851
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1851
    throw v3
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3183
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3188
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    return v2

    .line 3185
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3187
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    throw v3
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2430
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2436
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2439
    return v2

    .line 2433
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2435
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    throw v3
.end method

.method public isTimaKeystoreEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3960
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3963
    return v2

    .line 3957
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3959
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3959
    throw v3
.end method

.method public isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3973
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3978
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3981
    return v2

    .line 3975
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3977
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3977
    throw v3
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2501
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2506
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2509
    return v2

    .line 2503
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2505
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2505
    throw v3
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3279
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3282
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3285
    return v2

    .line 3279
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3281
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3281
    throw v3
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2876
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2882
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    return v2

    .line 2879
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2881
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2881
    throw v3
.end method

.method public isWapPushAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3085
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3089
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3094
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3097
    return v2

    .line 3091
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3093
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3093
    throw v3
.end method

.method public isWifiAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2374
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2379
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2382
    return v2

    .line 2376
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2378
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2378
    throw v3
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 6
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2950
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2955
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2958
    return v2

    .line 2952
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2954
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2954
    throw v3
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2357
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2362
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    return v2

    .line 2359
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2361
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2361
    throw v3
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2769
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    return-void

    .line 2773
    :catchall_0
    move-exception v2

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2773
    throw v2
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2786
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    return-void

    .line 2791
    :catchall_0
    move-exception v2

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2791
    throw v2
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 5
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2912
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    return-void

    .line 2915
    :catchall_0
    move-exception v2

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2915
    throw v2
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3329
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3322
    return-void

    .line 3332
    :catchall_0
    move-exception v2

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3332
    throw v2
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .locals 6
    .param p1, "callback"    # Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3992
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3993
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3998
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4001
    return v2

    .line 3995
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3997
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    throw v3
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2289
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2294
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2297
    return v2

    .line 2291
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2293
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    throw v3
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3051
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3053
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3055
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3056
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3045
    return-void

    .line 3059
    :catchall_0
    move-exception v2

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3059
    throw v2
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1508
    if-eqz p5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    return-void

    .line 1512
    :catchall_0
    move-exception v2

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1512
    throw v2
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3313
    if-eqz p4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3314
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3304
    return-void

    .line 3317
    :catchall_0
    move-exception v2

    .line 3318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3317
    throw v2
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1543
    if-eqz p4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    return-void

    .line 1547
    :catchall_0
    move-exception v2

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw v2
.end method

.method public validateCertificateAtInstallAsUser([BI)I
    .locals 6
    .param p1, "certBytes"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2923
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2926
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2928
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2929
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2930
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2931
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2934
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2937
    return v2

    .line 2933
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2933
    throw v3
.end method
