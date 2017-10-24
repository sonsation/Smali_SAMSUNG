.class Landroid/hardware/display/IDisplayManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager$Stub;
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
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 714
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connectDevice(IILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceType"    # I
    .param p2, "connectingMode"    # I
    .param p3, "device"    # Landroid/os/Bundle;
    .param p4, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    if-eqz p3, :cond_0

    .line 1180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1186
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1187
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    return-void

    .line 1184
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1190
    :catchall_0
    move-exception v2

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1190
    throw v2
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    return-void

    .line 826
    :catchall_0
    move-exception v2

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    throw v2
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 5
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1237
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1229
    return-void

    .line 1240
    :catchall_0
    move-exception v2

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    throw v2
.end method

.method public connectWifiDisplayWithModeEx(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1256
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1248
    return-void

    .line 1260
    :catchall_0
    move-exception v2

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1260
    throw v2
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-void

    .line 1224
    :catchall_0
    move-exception v2

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projectionToken"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 964
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 965
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    if-eqz p8, :cond_2

    .line 971
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v3, 0x0

    invoke-virtual {p8, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 977
    :goto_1
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 983
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    return v2

    .end local v2    # "_result":I
    :cond_1
    move-object v4, v3

    .line 963
    goto :goto_0

    .line 975
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 982
    :catchall_0
    move-exception v3

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    throw v3
.end method

.method public disconnectDevice(I)V
    .locals 5
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1198
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    return-void

    .line 1205
    :catchall_0
    move-exception v2

    .line 1206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    throw v2
.end method

.method public disconnectWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    return-void

    .line 842
    :catchall_0
    move-exception v2

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw v2
.end method

.method public enableOverlayMagnifier(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

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
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    .line 1078
    :catchall_0
    move-exception v2

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    throw v2
.end method

.method public enableWifiDisplayEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1277
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1267
    return-void

    .line 1280
    :catchall_0
    move-exception v2

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    throw v2
.end method

.method public enableWifiDisplayEx2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    if-eqz p7, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    return-void

    .line 1304
    :catchall_0
    move-exception v2

    .line 1305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1304
    throw v2
.end method

.method public enableWifiDisplayWithParams(Ljava/lang/String;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    return-void

    .line 1322
    :catchall_0
    move-exception v2

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
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
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 867
    return-void

    .line 877
    :catchall_0
    move-exception v2

    .line 878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v2
.end method

.method public getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1730
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1733
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1734
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1737
    sget-object v3, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemDlnaDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    return-object v2

    .line 1740
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/hardware/display/SemDlnaDevice;
    goto :goto_0

    .line 1743
    .end local v2    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :catchall_0
    move-exception v3

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1743
    throw v3
.end method

.method public getActiveDLNAState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1761
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    return v2

    .line 1760
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    throw v3
.end method

.method public getDeviceStatus(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1599
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1609
    return-object v2

    .line 1602
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1605
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 1606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v3
.end method

.method public getDisplayIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 756
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 761
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 764
    return-object v2

    .line 760
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    sget-object v3, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    return-object v2

    .line 740
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 743
    .end local v2    # "_result":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v3

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 743
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    const-string/jumbo v0, "android.hardware.display.IDisplayManager"

    return-object v0
.end method

.method public getLastConnectedDevice(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1561
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    return-object v2

    .line 1564
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1567
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1567
    throw v3
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .locals 6
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1334
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1338
    sget-object v3, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1348
    return-object v2

    .line 1341
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/hardware/display/WifiDisplay;
    goto :goto_0

    .line 1344
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplay;
    :catchall_0
    move-exception v3

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1344
    throw v3
.end method

.method public getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
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
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1620
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1623
    sget-object v3, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/SemDlnaDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    return-object v2

    .line 1626
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/hardware/display/SemDlnaDevice;
    goto :goto_0

    .line 1629
    .end local v2    # "_result":Landroid/hardware/display/SemDlnaDevice;
    :catchall_0
    move-exception v3

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1629
    throw v3
.end method

.method public getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1656
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1661
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return-object v2

    .line 1660
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    throw v3
.end method

.method public getMainDisplayOverride([I)Landroid/os/IBinder;
    .locals 6
    .param p1, "size"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1819
    if-nez p1, :cond_0

    .line 1820
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    :goto_0
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1828
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1834
    return-object v2

    .line 1823
    .end local v2    # "_result":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    array-length v3, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1830
    :catchall_0
    move-exception v3

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    throw v3
.end method

.method public getPresentationOwner(I)Ljava/lang/String;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1801
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1804
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1807
    return-object v2

    .line 1803
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    throw v3
.end method

.method public getScreenSharingStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1687
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1692
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    return v2

    .line 1691
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1691
    throw v3
.end method

.method public getWifiDisplayConfiguration(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
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

    .line 1531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1533
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1536
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    return-object v2

    .line 1539
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1542
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    throw v3
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 926
    sget-object v3, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    return-object v2

    .line 929
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/hardware/display/WifiDisplayStatus;
    goto :goto_0

    .line 932
    .end local v2    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :catchall_0
    move-exception v3

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    throw v3
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1442
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1447
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1450
    return v2

    .line 1444
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1446
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1446
    throw v3
.end method

.method public isDongleRenameAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1461
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1466
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1469
    return v2

    .line 1463
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1465
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    throw v3
.end method

.method public isKDDIServiceConnected()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1390
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1395
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1398
    return v2

    .line 1392
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1394
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1394
    throw v3
.end method

.method public isSinkAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1403
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1406
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1407
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1412
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    return v2

    .line 1409
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1411
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    throw v3
.end method

.method public isSourceAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1424
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1429
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    return v2

    .line 1426
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1428
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1428
    throw v3
.end method

.method public isWfdEngineRunning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1373
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1378
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1381
    return v2

    .line 1375
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1377
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    throw v3
.end method

.method public pauseWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    return-void

    .line 893
    :catchall_0
    move-exception v2

    .line 894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 893
    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 773
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    return-void

    .line 776
    :catchall_0
    move-exception v2

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v2
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1055
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1059
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-void

    .line 1062
    :catchall_0
    move-exception v2

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw v2
.end method

.method public removeLastConnectedDevice(I)V
    .locals 5
    .param p1, "deviceType"    # I
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

    .line 1578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    return-void

    .line 1583
    :catchall_0
    move-exception v2

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1583
    throw v2
.end method

.method public removeLastConnectedDlnaDevice()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    return-void

    .line 1644
    :catchall_0
    move-exception v2

    .line 1645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    throw v2
.end method

.method public removeLastConnectedGCastDevice()V
    .locals 5
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

    .line 1671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1673
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    return-void

    .line 1675
    :catchall_0
    move-exception v2

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    throw v2
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1478
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    return-void

    .line 1481
    :catchall_0
    move-exception v2

    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
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

    .line 854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 849
    return-void

    .line 860
    :catchall_0
    move-exception v2

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 860
    throw v2
.end method

.method public requestColorTransform(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "colorTransformId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    return-void

    .line 951
    :catchall_0
    move-exception v2

    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 996
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    return-void

    .line 1003
    :catchall_0
    move-exception v2

    .line 1004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1003
    throw v2
.end method

.method public restartWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1352
    return-void

    .line 1361
    :catchall_0
    move-exception v2

    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1361
    throw v2
.end method

.method public resumeWifiDisplay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 900
    return-void

    .line 909
    :catchall_0
    move-exception v2

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v2
.end method

.method public scanWifiDisplays()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1139
    return-void

    .line 1148
    :catchall_0
    move-exception v2

    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1148
    throw v2
.end method

.method public setActiveDlnaState(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1773
    if-eqz p2, :cond_0

    .line 1774
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/hardware/display/SemDlnaDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1780
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1766
    return-void

    .line 1778
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1784
    :catchall_0
    move-exception v2

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1784
    throw v2
.end method

.method public setCurrentDisplayIdMagnifier(I)V
    .locals 5
    .param p1, "displayid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    return-void

    .line 1131
    :catchall_0
    move-exception v2

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw v2
.end method

.method public setExtendMode(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1718
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1712
    return-void

    .line 1722
    :catchall_0
    move-exception v2

    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw v2
.end method

.method public setMagnificationSettings(IIF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1113
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return-void

    .line 1116
    :catchall_0
    move-exception v2

    .line 1117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    throw v2
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    if-eqz p1, :cond_0

    .line 1090
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1096
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1083
    return-void

    .line 1094
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1099
    :catchall_0
    move-exception v2

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v2
.end method

.method public setScanningChannel(I)V
    .locals 5
    .param p1, "requestedChannel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1486
    return-void

    .line 1496
    :catchall_0
    move-exception v2

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    throw v2
.end method

.method public setScreenSharingStatus(I)V
    .locals 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1697
    return-void

    .line 1707
    :catchall_0
    move-exception v2

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1707
    throw v2
.end method

.method public setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1017
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    return-void

    .line 1021
    :catchall_0
    move-exception v2

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1034
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1035
    if-eqz p2, :cond_1

    .line 1036
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1042
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    return-void

    .line 1040
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v2

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    throw v2
.end method

.method public setWifiDisplayConfiguration(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1515
    :goto_0
    iget-object v3, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1520
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1523
    return v2

    .line 1513
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1519
    :catchall_0
    move-exception v3

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1519
    throw v3
.end method

.method public startWifiDisplayScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    return-void

    .line 793
    :catchall_0
    move-exception v2

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    throw v2
.end method

.method public stopScanWifiDisplays()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    return-void

    .line 1164
    :catchall_0
    move-exception v2

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    throw v2
.end method

.method public stopWifiDisplayScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-void

    .line 809
    :catchall_0
    move-exception v2

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw v2
.end method
