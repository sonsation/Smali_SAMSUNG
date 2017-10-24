.class Landroid/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager$Stub;
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
    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    iput-object p1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1508
    return-void
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZI)V
    .locals 6
    .param p1, "addPos"    # I
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showWhenLocked"    # Z
    .param p8, "userId"    # I
    .param p9, "configChanges"    # I
    .param p10, "voiceInteraction"    # Z
    .param p11, "launchTaskBehind"    # Z
    .param p12, "taskBounds"    # Landroid/graphics/Rect;
    .param p13, "configuration"    # Landroid/content/res/Configuration;
    .param p14, "taskResizeMode"    # I
    .param p15, "alwaysFocusable"    # Z
    .param p16, "homeTask"    # Z
    .param p17, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1898
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1900
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1903
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1905
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    if-eqz p6, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    if-eqz p7, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    if-eqz p10, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    if-eqz p11, :cond_4

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    if-eqz p12, :cond_5

    .line 1913
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    const/4 v3, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1919
    :goto_5
    if-eqz p13, :cond_6

    .line 1920
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    const/4 v3, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1926
    :goto_6
    move/from16 v0, p14

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    if-eqz p15, :cond_7

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    if-eqz p16, :cond_8

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    move/from16 v0, p17

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1931
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    return-void

    .line 1902
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1906
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1907
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1910
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 1911
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 1917
    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1933
    :catchall_0
    move-exception v3

    .line 1934
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1933
    throw v3

    .line 1924
    :cond_6
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 1927
    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .line 1928
    :cond_8
    const/4 v3, 0x0

    goto :goto_8
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1841
    return-void

    .line 1852
    :catchall_0
    move-exception v2

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1852
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelTaskThumbnailTransition(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2846
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2843
    return-void

    .line 2853
    :catchall_0
    move-exception v2

    .line 2854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2853
    throw v2
.end method

.method public cancelTaskWindowTransition(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2833
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    return-void

    .line 2835
    :catchall_0
    move-exception v2

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2835
    throw v2
.end method

.method public changeDisplayScale(FFFZLandroid/view/IInputFilter;)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "registerInput"    # Z
    .param p5, "filter"    # Landroid/view/IInputFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3712
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3713
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3714
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3715
    if-eqz p5, :cond_1

    invoke-interface {p5}, Landroid/view/IInputFilter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3716
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    return-void

    .line 3719
    :catchall_0
    move-exception v2

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3719
    throw v2
.end method

.method public changeNavigationBarHeight(I)V
    .locals 5
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3819
    return-void

    .line 3829
    :catchall_0
    move-exception v2

    .line 3830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3829
    throw v2
.end method

.method public clearForcedDisplayDensity(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1745
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    return-void

    .line 1752
    :catchall_0
    move-exception v2

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1752
    throw v2
.end method

.method public clearForcedDisplaySize(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    return-void

    .line 1685
    :catchall_0
    move-exception v2

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3650
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3651
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3643
    return-void

    .line 3653
    :catchall_0
    move-exception v2

    .line 3654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3653
    throw v2
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3180
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3185
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    return v2

    .line 3182
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3184
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3184
    throw v3
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
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

    .line 2650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2652
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2645
    return-void

    .line 2655
    :catchall_0
    move-exception v2

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    throw v2
.end method

.method public createWallpaperInputConsumer(Landroid/view/InputChannel;)V
    .locals 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3394
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3397
    invoke-virtual {p1, v1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3388
    return-void

    .line 3400
    :catchall_0
    move-exception v2

    .line 3401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3400
    throw v2
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2527
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
    return-void

    .line 2530
    :catchall_0
    move-exception v2

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2530
    throw v2
.end method

.method public dismissKeyguard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

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

    .line 2616
    return-void

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

.method public dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .param p4, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    if-eqz p3, :cond_0

    .line 3766
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3767
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3772
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3773
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3757
    return-void

    .line 3770
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3776
    :catchall_0
    move-exception v2

    .line 3777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3776
    throw v2
.end method

.method public enableScreenIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3158
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3152
    return-void

    .line 3161
    :catchall_0
    move-exception v2

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3161
    throw v2
.end method

.method public endProlongedAnimations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2396
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    return-void

    .line 2399
    :catchall_0
    move-exception v2

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2399
    throw v2
.end method

.method public executeAppTransition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2236
    return-void

    .line 2245
    :catchall_0
    move-exception v2

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 5
    .param p1, "callback"    # Landroid/view/IOnKeyguardExitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2556
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IOnKeyguardExitResult;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2557
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    return-void

    .line 2560
    :catchall_0
    move-exception v2

    .line 2561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    throw v2
.end method

.method public freezeRotation(I)V
    .locals 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2961
    return-void

    .line 2971
    :catchall_0
    move-exception v2

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    throw v2
.end method

.method public getAnimationScale(I)F
    .locals 6
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2670
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2675
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2678
    return v2

    .line 2674
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2674
    throw v3
.end method

.method public getAnimationScales()[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2687
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2692
    .local v2, "_result":[F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    return-object v2

    .line 2691
    .end local v2    # "_result":[F
    :catchall_0
    move-exception v3

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    throw v3
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 6
    .param p1, "token"    # Landroid/view/IApplicationToken;
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
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2007
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2012
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    return v2

    .line 2011
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    throw v3
.end method

.method public getBaseDisplayDensity(I)I
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1721
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1724
    return v2

    .line 1720
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    throw v3
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1649
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    return-void

    .line 1653
    :catchall_0
    move-exception v2

    .line 1654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1653
    throw v2
.end method

.method public getBoundsForNewConfiguration(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2472
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2475
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    return-object v2

    .line 2478
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Rect;
    goto :goto_0

    .line 2481
    .end local v2    # "_result":Landroid/graphics/Rect;
    :catchall_0
    move-exception v3

    .line 2482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2481
    throw v3
.end method

.method public getCurrentAnimatorScale()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2740
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    return v2

    .line 2739
    .end local v2    # "_result":F
    :catchall_0
    move-exception v3

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    throw v3
.end method

.method public getDefaultDisplayDensity(I)I
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3596
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3601
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3604
    return v2

    .line 3600
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3600
    throw v3
.end method

.method public getDockedStackSide()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3226
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3228
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3231
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    return v2

    .line 3230
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3230
    throw v3
.end method

.method public getInitialDisplayDensity(I)I
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1693
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1696
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1703
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    return v2

    .line 1702
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1702
    throw v3
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1632
    invoke-virtual {p2, v1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    return-void

    .line 1635
    :catchall_0
    move-exception v2

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    const-string/jumbo v0, "android.view.IWindowManager"

    return-object v0
.end method

.method public getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
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
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3578
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3583
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3586
    return v2

    .line 3582
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    throw v3
.end method

.method public getPendingAppTransition()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2061
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return v2

    .line 2060
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2060
    throw v3
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2945
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2950
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2953
    return v2

    .line 2949
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2949
    throw v3
.end method

.method public getRotation()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2891
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2896
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2899
    return v2

    .line 2895
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2895
    throw v3
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3354
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3356
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3360
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3347
    return-void

    .line 3359
    :catchall_0
    move-exception v2

    .line 3360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3359
    throw v2
.end method

.method public getVisibleWindowInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3681
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3683
    sget-object v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3686
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3689
    return-object v2

    .line 3685
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    :catchall_0
    move-exception v3

    .line 3686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3685
    throw v3
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3204
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3207
    sget-object v3, Landroid/view/WindowContentFrameStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowContentFrameStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    return-object v2

    .line 3210
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/view/WindowContentFrameStats;
    goto :goto_0

    .line 3213
    .end local v2    # "_result":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v3

    .line 3214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3213
    throw v3
.end method

.method public hasNavigationBar()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3095
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3100
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3103
    return v2

    .line 3097
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3099
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3099
    throw v3
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2605
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2606
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2611
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    return v2

    .line 2608
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2610
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2610
    throw v3
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1612
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1617
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    return v2

    .line 1614
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1616
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    throw v3
.end method

.method public isKeyguardLocked()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2572
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2577
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2580
    return v2

    .line 2574
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2576
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2576
    throw v3
.end method

.method public isKeyguardSecure()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2594
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2597
    return v2

    .line 2591
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2593
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    throw v3
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3877
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3878
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3883
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3886
    return v2

    .line 3880
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3882
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3882
    throw v3
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3504
    if-eqz p1, :cond_0

    .line 3505
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3506
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3511
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3512
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3516
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3519
    return v2

    .line 3509
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3515
    :catchall_0
    move-exception v3

    .line 3516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3515
    throw v3

    .line 3513
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isRotationFrozen()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3006
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3011
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3014
    return v2

    .line 3008
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3010
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3010
    throw v3
.end method

.method public isSafeModeEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3139
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3144
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3147
    return v2

    .line 3141
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3143
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3143
    throw v3
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3456
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3458
    if-eqz p2, :cond_0

    .line 3459
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3460
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3465
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3470
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3473
    return v2

    .line 3463
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3469
    :catchall_0
    move-exception v3

    .line 3470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3469
    throw v3

    .line 3467
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isViewServerRunning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1572
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1577
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    return v2

    .line 1574
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1576
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1576
    throw v3
.end method

.method public keyguardGoingAway(I)V
    .locals 5
    .param p1, "flags"    # I
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
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

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

.method public lockNow(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3114
    if-eqz p1, :cond_0

    .line 3115
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3116
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3121
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3108
    return-void

    .line 3119
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3124
    :catchall_0
    move-exception v2

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3124
    throw v2
.end method

.method public notifyAppResumed(Landroid/os/IBinder;ZZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "wasStopped"    # Z
    .param p3, "allowSavedSurface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2317
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    return-void

    :cond_0
    move v4, v3

    .line 2317
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2318
    goto :goto_1

    .line 2322
    :catchall_0
    move-exception v2

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    throw v2
.end method

.method public notifyAppStopped(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2334
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    return-void

    .line 2337
    :catchall_0
    move-exception v2

    .line 2338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    throw v2
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 6
    .param p1, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1592
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1593
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1594
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1596
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1599
    .local v2, "_result":Landroid/view/IWindowSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1602
    return-object v2

    .end local v2    # "_result":Landroid/view/IWindowSession;
    :cond_1
    move-object v4, v3

    .line 1591
    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 1592
    goto :goto_1

    .line 1598
    :catchall_0
    move-exception v3

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2071
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2076
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    return-void

    .line 2079
    :catchall_0
    move-exception v2

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    throw v2
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2151
    if-eqz p1, :cond_1

    .line 2152
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2158
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    if-eqz p6, :cond_0

    invoke-interface {p6}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2163
    if-eqz p7, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    return-void

    .line 2156
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2167
    :catchall_0
    move-exception v2

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2167
    throw v2

    :cond_2
    move v2, v3

    .line 2163
    goto :goto_1
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
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

    .line 2107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2102
    return-void

    .line 2115
    :catchall_0
    move-exception v2

    .line 2116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2115
    throw v2
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    return-void

    .line 2209
    :catchall_0
    move-exception v2

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    throw v2
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 5
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "finishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2186
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2187
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2188
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2189
    if-eqz p4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    return-void

    :cond_2
    move-object v4, v3

    .line 2187
    goto :goto_0

    .line 2193
    :catchall_0
    move-exception v2

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw v2
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 5
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2226
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2227
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    return-void

    :cond_2
    move-object v4, v3

    .line 2225
    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v2

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2231
    throw v2
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2084
    return-void

    .line 2097
    :catchall_0
    move-exception v2

    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2097
    throw v2
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 6
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2126
    if-eqz p1, :cond_1

    .line 2127
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2133
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2136
    if-eqz p5, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2120
    return-void

    .line 2131
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2140
    :catchall_0
    move-exception v2

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2140
    throw v2

    :cond_2
    move v2, v3

    .line 2136
    goto :goto_1
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1799
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1803
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    return-void

    .line 1806
    :catchall_0
    move-exception v2

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    throw v2
.end method

.method public prepareAppTransition(IZ)V
    .locals 5
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    return-void

    .line 2044
    :catchall_0
    move-exception v2

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2044
    throw v2
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2542
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return-void

    .line 2545
    :catchall_0
    move-exception v2

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    throw v2
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/IDockedStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3290
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IDockedStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3291
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3284
    return-void

    .line 3294
    :catchall_0
    move-exception v2

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3294
    throw v2
.end method

.method public registerEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/sec/easyonehand/IEasyOneHandWatcher;
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
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3730
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/sec/easyonehand/IEasyOneHandWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3731
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3724
    return-void

    .line 3734
    :catchall_0
    move-exception v2

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    throw v2
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 5
    .param p1, "shortcutCode"    # J
    .param p3, "keySubscriber"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3375
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3376
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3377
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3369
    return-void

    .line 3380
    :catchall_0
    move-exception v2

    .line 3381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3380
    throw v2
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2381
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    return-void

    .line 2384
    :catchall_0
    move-exception v2

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2384
    throw v2
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2930
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2931
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return-void

    .line 2933
    :catchall_0
    move-exception v2

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2933
    throw v2
.end method

.method public removeWallpaperInputConsumer()V
    .locals 5
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

    .line 3413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3414
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3408
    return-void

    .line 3417
    :catchall_0
    move-exception v2

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3417
    throw v2
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
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

    .line 1862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1864
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    return-void

    .line 1867
    :catchall_0
    move-exception v2

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    throw v2
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3334
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3336
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3328
    return-void

    .line 3339
    :catchall_0
    move-exception v2

    .line 3340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    throw v2
.end method

.method public requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    .locals 6
    .param p1, "receiver"    # Lcom/android/internal/app/IAssistScreenshotReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3022
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3026
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/IAssistScreenshotReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3027
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3032
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3035
    return v2

    .line 3029
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3031
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3031
    throw v3
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "request"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3481
    if-eqz p1, :cond_0

    .line 3482
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3483
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3488
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3475
    return-void

    .line 3486
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3492
    :catchall_0
    move-exception v2

    .line 3493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3492
    throw v2

    :cond_1
    move v2, v3

    .line 3488
    goto :goto_1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "android.view.IWindowManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3432
    if-eqz p2, :cond_0

    .line 3433
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3439
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3440
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 3445
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3448
    return v2

    .line 3437
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3444
    :catchall_0
    move-exception v3

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3444
    throw v3

    :cond_1
    move v3, v4

    .line 3439
    goto :goto_1

    .line 3442
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1818
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1811
    return-void

    .line 1821
    :catchall_0
    move-exception v2

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1821
    throw v2
.end method

.method public screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "frameScale"    # F
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

    .line 3049
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3051
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3052
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3054
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3055
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3056
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3058
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3065
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    return-object v2

    .line 3061
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 3064
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3064
    throw v3
.end method

.method public setAnimationScale(IF)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "scale"    # F
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
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2705
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    return-void

    .line 2708
    :catchall_0
    move-exception v2

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    throw v2
.end method

.method public setAnimationScales([F)V
    .locals 5
    .param p1, "scales"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2716
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2720
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    return-void

    .line 2723
    :catchall_0
    move-exception v2

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1989
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1990
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    return-void

    .line 1994
    :catchall_0
    move-exception v2

    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1994
    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "transferFrom"    # Landroid/os/IBinder;
    .param p11, "createIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2257
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2260
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2262
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2264
    if-eqz p4, :cond_0

    .line 2265
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2266
    const/4 v4, 0x0

    invoke-virtual {p4, v1, v4}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2271
    :goto_0
    if-eqz p5, :cond_1

    .line 2272
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2273
    const/4 v4, 0x0

    invoke-static {p5, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2278
    :goto_1
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2282
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2283
    if-eqz p11, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    iget-object v4, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x25

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2285
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2286
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 2289
    .local v3, "_result":Z
    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    return v3

    .line 2269
    .end local v3    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2288
    :catchall_0
    move-exception v4

    .line 2289
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    throw v4

    .line 2276
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2283
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 2286
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_result":Z
    goto :goto_3
.end method

.method public setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "stackId"    # I
    .param p4, "taskBounds"    # Landroid/graphics/Rect;
    .param p5, "config"    # Landroid/content/res/Configuration;
    .param p6, "taskResizeMode"    # I
    .param p7, "homeTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    if-eqz p4, :cond_0

    .line 1960
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1961
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1966
    :goto_0
    if-eqz p5, :cond_1

    .line 1967
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    const/4 v4, 0x0

    invoke-virtual {p5, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1973
    :goto_1
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    if-eqz p7, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    return-void

    .line 1964
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1978
    :catchall_0
    move-exception v2

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1978
    throw v2

    .line 1971
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1974
    goto :goto_2
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2301
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2294
    return-void

    .line 2305
    :catchall_0
    move-exception v2

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    throw v2
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 5
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3846
    if-eqz p1, :cond_0

    .line 3847
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3848
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3853
    :goto_0
    if-eqz p2, :cond_1

    .line 3854
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3860
    :goto_1
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3840
    return-void

    .line 3851
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3863
    :catchall_0
    move-exception v2

    .line 3864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    throw v2

    .line 3858
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "deadzoneHole"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3788
    if-eqz p1, :cond_0

    .line 3789
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3790
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3795
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3782
    return-void

    .line 3793
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3798
    :catchall_0
    move-exception v2

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3798
    throw v2
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "touchableRegion"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3265
    if-eqz p1, :cond_0

    .line 3266
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3272
    :goto_0
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3259
    return-void

    .line 3270
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3275
    :catchall_0
    move-exception v2

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3275
    throw v2
.end method

.method public setDockedStackResizing(Z)V
    .locals 5
    .param p1, "resizing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3246
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3247
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3240
    return-void

    .line 3250
    :catchall_0
    move-exception v2

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3250
    throw v2
.end method

.method public setEventDispatching(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1832
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    return-void

    .line 1836
    :catchall_0
    move-exception v2

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    throw v2
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "moveFocusNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2024
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2017
    return-void

    .line 2028
    :catchall_0
    move-exception v2

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2028
    throw v2
.end method

.method public setForcedDisplayDensity(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1726
    return-void

    .line 1737
    :catchall_0
    move-exception v2

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1737
    throw v2
.end method

.method public setForcedDisplayRotation(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3666
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3658
    return-void

    .line 3669
    :catchall_0
    move-exception v2

    .line 3670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3669
    throw v2
.end method

.method public setForcedDisplayScalingMode(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1760
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1757
    return-void

    .line 1768
    :catchall_0
    move-exception v2

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    throw v2
.end method

.method public setForcedDisplaySize(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    return-void

    .line 1670
    :catchall_0
    move-exception v2

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1670
    throw v2
.end method

.method public setForcedDisplaySizeDensity(IIII)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3614
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3616
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3606
    return-void

    .line 3619
    :catchall_0
    move-exception v2

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3619
    throw v2
.end method

.method public setForcedDisplaySizeDensityEx(IIIIZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "bDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3633
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3634
    if-eqz p5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3635
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    return-void

    .line 3638
    :catchall_0
    move-exception v2

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3638
    throw v2
.end method

.method public setInTouchMode(Z)V
    .locals 5
    .param p1, "showFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2750
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2753
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    return-void

    .line 2757
    :catchall_0
    move-exception v2

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2757
    throw v2
.end method

.method public setKeyguardPreview(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
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
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

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

.method public setNewConfiguration(Landroid/content/res/Configuration;)[I
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    if-eqz p1, :cond_0

    .line 2446
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2452
    :goto_0
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2457
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    return-object v2

    .line 2450
    .end local v2    # "_result":[I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2456
    :catchall_0
    move-exception v3

    .line 2457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    throw v3
.end method

.method public setOverscan(IIIII)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1778
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1783
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

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

    .line 1775
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

.method public setResizeDimLayer(ZIF)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "targetStackId"    # I
    .param p3, "alpha"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3312
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3314
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3315
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    return-void

    .line 3318
    :catchall_0
    move-exception v2

    .line 3319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3318
    throw v2
.end method

.method public setReverseStartingWindowContentView(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3546
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3538
    return-void

    .line 3549
    :catchall_0
    move-exception v2

    .line 3550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3549
    throw v2
.end method

.method public setScreenCaptureDisabled(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2814
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    return-void

    .line 2817
    :catchall_0
    move-exception v2

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    throw v2
.end method

.method public setStartingWindowContentView(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3530
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    return-void

    .line 3533
    :catchall_0
    move-exception v2

    .line 3534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    throw v2
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2795
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2788
    return-void

    .line 2798
    :catchall_0
    move-exception v2

    .line 2799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    throw v2
.end method

.method public showStrictModeViolation(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2768
    return-void

    .line 2778
    :catchall_0
    move-exception v2

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw v2
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2342
    return-void

    .line 2353
    :catchall_0
    move-exception v2

    .line 2354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2353
    throw v2
.end method

.method public startFreezingScreen(II)V
    .locals 5
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2487
    return-void

    .line 2498
    :catchall_0
    move-exception v2

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    throw v2
.end method

.method public startSurfaceAnimation(Landroid/os/IBinder;[I)V
    .locals 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3808
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3810
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3811
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x75

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3804
    return-void

    .line 3813
    :catchall_0
    move-exception v1

    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3813
    throw v1
.end method

.method public startViewServer(I)Z
    .locals 6
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1539
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    return v2

    .line 1536
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1538
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1538
    throw v3
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3077
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3079
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3073
    return-void

    .line 3081
    :catchall_0
    move-exception v1

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3081
    throw v1
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2365
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    return-void

    .line 2369
    :catchall_0
    move-exception v2

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2369
    throw v2
.end method

.method public stopFreezingScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2509
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    return-void

    .line 2512
    :catchall_0
    move-exception v2

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2512
    throw v2
.end method

.method public stopViewServer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1558
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1561
    return v2

    .line 1555
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1557
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1557
    throw v3
.end method

.method public thawRotation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.view.IWindowManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2986
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2987
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2980
    return-void

    .line 2989
    :catchall_0
    move-exception v2

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2989
    throw v2
.end method

.method public unregisterEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V
    .locals 5
    .param p1, "watcher"    # Landroid/sec/easyonehand/IEasyOneHandWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3745
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/sec/easyonehand/IEasyOneHandWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3746
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3739
    return-void

    .line 3749
    :catchall_0
    move-exception v2

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3749
    throw v2
.end method

.method public updateCurrentUserPolicy(I)V
    .locals 5
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3695
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3697
    iget-object v1, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3691
    return-void

    .line 3699
    :catchall_0
    move-exception v1

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    throw v1
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 6
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2414
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.view.IWindowManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    if-eqz p1, :cond_0

    .line 2416
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2422
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2423
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2426
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2436
    return-object v2

    .line 2420
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2432
    :catchall_0
    move-exception v3

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    throw v3

    .line 2429
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public updateRotation(ZZ)V
    .locals 5
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2874
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2875
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2876
    iget-object v2, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2868
    return-void

    :cond_0
    move v4, v3

    .line 2874
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2875
    goto :goto_1

    .line 2879
    :catchall_0
    move-exception v2

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2879
    throw v2
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 6
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.view.IWindowManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2908
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2909
    iget-object v3, p0, Landroid/view/IWindowManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2914
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    return v2

    .line 2913
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2913
    throw v3
.end method
