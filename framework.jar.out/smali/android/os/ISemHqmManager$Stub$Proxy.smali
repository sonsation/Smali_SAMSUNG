.class Landroid/os/ISemHqmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemHqmManager.java"

# interfaces
.implements Landroid/os/ISemHqmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISemHqmManager$Stub;
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 162
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCFServerEnable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 298
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    return v2

    .line 295
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 297
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw v3
.end method

.method public getDVServerEnable()Z
    .locals 6
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

    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 281
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    return v2

    .line 278
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 280
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v3
.end method

.method public getHqmEnable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 264
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    return v2

    .line 261
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 263
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v3
.end method

.method public getHqmStatistics()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 315
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-object v2

    .line 314
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string/jumbo v0, "android.os.ISemHqmManager"

    return-object v0
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "ver"    # Ljava/lang/String;
    .param p4, "manufacture"    # Ljava/lang/String;
    .param p5, "hitType"    # Ljava/lang/String;
    .param p6, "feature"    # Ljava/lang/String;
    .param p7, "logMaps"    # Ljava/lang/String;
    .param p8, "envlogMaps"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 194
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    return v2

    .line 191
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 193
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v3
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.os.ISemHqmManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 220
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    return v2

    .line 217
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 219
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v3
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 231
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "android.os.ISemHqmManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Landroid/os/ISemHqmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 243
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 247
    .local v3, "_result":Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return v3

    .line 244
    .end local v3    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_result":Z
    goto :goto_0

    .line 246
    .end local v3    # "_result":Z
    :catchall_0
    move-exception v4

    .line 247
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    throw v4
.end method
