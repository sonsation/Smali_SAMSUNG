.class Lcom/samsung/android/aod/IAODManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAODManager.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODManager$Stub;
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
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "com.samsung.android.aod.IAODManager"

    return-object v0
.end method

.method public isAODState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 171
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    return v2

    .line 168
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 170
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v3
.end method

.method public requestNotificationKeys()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 222
    :catchall_0
    move-exception v2

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v2
.end method

.method public setLiveClockInfo(IJJJJJJJJ)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 249
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    invoke-virtual {v2, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    move-wide/from16 v0, p14

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    move-wide/from16 v0, p16

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-object v5, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 260
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 261
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 264
    .local v4, "_result":I
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 267
    return v4

    .line 263
    .end local v4    # "_result":I
    :catchall_0
    move-exception v5

    .line 264
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v5
.end method

.method public setLiveClockNeedle([C)V
    .locals 5
    .param p1, "img_buf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 276
    iget-object v2, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 279
    :catchall_0
    move-exception v2

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-void

    .line 189
    :catchall_0
    move-exception v2

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    throw v2
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 5
    .param p1, "notiCount"    # I
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
    .line 229
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 235
    iget-object v2, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    return-void

    .line 238
    :catchall_0
    move-exception v2

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v2
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.aod.IAODManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    return-void

    .line 208
    :catchall_0
    move-exception v2

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw v2
.end method
