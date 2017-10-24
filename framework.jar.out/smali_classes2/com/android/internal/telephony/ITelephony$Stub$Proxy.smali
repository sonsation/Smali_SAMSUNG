.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
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
    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2336
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2334
    return-void
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5886
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5891
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5894
    return v2

    .line 5888
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5890
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5890
    throw v3
.end method

.method public IsInternationalRoaming()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5869
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5871
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5874
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5877
    return v2

    .line 5871
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5873
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5873
    throw v3
.end method

.method public NSRI_requestProc(I[B)[B
    .locals 6
    .param p1, "datalen"    # I
    .param p2, "adata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6655
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6657
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6658
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6660
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6663
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6666
    return-object v2

    .line 6662
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6662
    throw v3
.end method

.method public SimSlotActivation(Z)V
    .locals 5
    .param p1, "activation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6253
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6254
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6247
    return-void

    .line 6257
    :catchall_0
    move-exception v2

    .line 6258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6257
    throw v2
.end method

.method public SimSlotOnOff(I)V
    .locals 5
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6239
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6232
    return-void

    .line 6242
    :catchall_0
    move-exception v2

    .line 6243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6242
    throw v2
.end method

.method public answerRingingCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2503
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2497
    return-void

    .line 2506
    :catchall_0
    move-exception v2

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2506
    throw v2
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    return-void

    .line 2536
    :catchall_0
    move-exception v2

    .line 2537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2536
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .locals 6
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6333
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6335
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6338
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6341
    return-object v2

    .line 6337
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6337
    throw v3
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 6
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6346
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6352
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6354
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6355
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6362
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6365
    return-object v2

    .line 6358
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 6361
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 6362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6361
    throw v3
.end method

.method public calculateNafExternalKey([B)[B
    .locals 6
    .param p1, "nafId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6375
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6377
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6380
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6383
    return-object v2

    .line 6379
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6379
    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2405
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2397
    return-void

    .line 2408
    :catchall_0
    move-exception v2

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2408
    throw v2
.end method

.method public callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2428
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2419
    return-void

    .line 2431
    :catchall_0
    move-exception v2

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    throw v2
.end method

.method public canChangeDtmfToneLength()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4945
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4950
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4953
    return v2

    .line 4947
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4949
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4949
    throw v3
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4542
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4544
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4547
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4550
    return v2

    .line 4546
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4546
    throw v3
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4560
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4565
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4568
    return v2

    .line 4564
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4564
    throw v3
.end method

.method public checkNSRIUSIMstate_int()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6635
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6639
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6641
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6644
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6647
    return v2

    .line 6643
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6643
    throw v3
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2352
    return-void

    .line 2362
    :catchall_0
    move-exception v2

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2362
    throw v2
.end method

.method public dialForSubscriber(ILjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2383
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    return-void

    .line 2386
    :catchall_0
    move-exception v2

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2386
    throw v2
.end method

.method public disableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3232
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3237
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3240
    return v2

    .line 3234
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3236
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3236
    throw v3
.end method

.method public disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3175
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3169
    return-void

    .line 3178
    :catchall_0
    move-exception v2

    .line 3179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3178
    throw v2
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3187
    return-void

    .line 3197
    :catchall_0
    move-exception v2

    .line 3198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3197
    throw v2
.end method

.method public enableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3217
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3220
    return v2

    .line 3214
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3216
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    throw v3
.end method

.method public enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3139
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    return-void

    .line 3142
    :catchall_0
    move-exception v2

    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3142
    throw v2
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3158
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

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

    .line 3151
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

.method public enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4900
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4901
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4894
    return-void

    .line 4904
    :catchall_0
    move-exception v2

    .line 4905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4904
    throw v2
.end method

.method public endCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2449
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

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
    :cond_0
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

.method public endCallForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2472
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2477
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    return v2

    .line 2474
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2476
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    throw v3
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5233
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5234
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    return-void

    .line 5236
    :catchall_0
    move-exception v2

    .line 5237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5236
    throw v2
.end method

.method public getActiveFgCallState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6808
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6813
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6816
    return v2

    .line 6810
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6812
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6812
    throw v3
.end method

.method public getActivePhoneType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3423
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3428
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3431
    return v2

    .line 3427
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    throw v3
.end method

.method public getActivePhoneTypeForSlot(I)I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3446
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3449
    return v2

    .line 3445
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    throw v3
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3832
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3834
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3836
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3839
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3842
    return-object v2

    .line 3838
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v3

    .line 3839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3838
    throw v3
.end method

.method public getAtr(I)[B
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5420
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5422
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5425
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5428
    return-object v2

    .line 5424
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 5425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5424
    throw v3
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4229
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4234
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4237
    return v2

    .line 4233
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4233
    throw v3
.end method

.method public getCallState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3336
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3341
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3344
    return v2

    .line 3340
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3340
    throw v3
.end method

.method public getCallStateForSlot(I)I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3354
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3359
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3362
    return v2

    .line 3358
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    throw v3
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
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
    .line 4582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4587
    if-eqz p1, :cond_0

    .line 4588
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4589
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4594
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4595
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4597
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4600
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4603
    return-object v2

    .line 4592
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4599
    :catchall_0
    move-exception v3

    .line 4600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4599
    throw v3
.end method

.method public getCarrierPrivilegeStatus(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4524
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4526
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4529
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4532
    return v2

    .line 4528
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4528
    throw v3
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3459
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3464
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    return v2

    .line 3463
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3463
    throw v3
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3478
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3483
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3486
    return v2

    .line 3482
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3482
    throw v3
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3496
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3501
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3504
    return v2

    .line 3500
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3500
    throw v3
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3515
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3520
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3523
    return v2

    .line 3519
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3519
    throw v3
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3535
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3537
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3542
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    return-object v2

    .line 3541
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3541
    throw v3
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3561
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3566
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    return-object v2

    .line 3565
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw v3
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4484
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4486
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4489
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4492
    return-object v2

    .line 4488
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4488
    throw v3
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4506
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4508
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4511
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4514
    return-object v2

    .line 4510
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4510
    throw v3
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3270
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3273
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3280
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3283
    return-object v2

    .line 3276
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 3279
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3279
    throw v3
.end method

.method public getCellLocationBySubId(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3293
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3296
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    return-object v2

    .line 3299
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 3302
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3302
    throw v3
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4303
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4308
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4311
    sget-object v3, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4318
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4321
    return-object v2

    .line 4314
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    goto :goto_0

    .line 4317
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :catchall_0
    move-exception v3

    .line 4318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4317
    throw v3
.end method

.method public getCurrentUATI()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6042
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6045
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6046
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6048
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6051
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6054
    return-object v2

    .line 6050
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6050
    throw v3
.end method

.method public getDataActivity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3371
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3376
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3379
    return v2

    .line 3375
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    throw v3
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4420
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4425
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4428
    return v2

    .line 4422
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4424
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4424
    throw v3
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3695
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3700
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3703
    return v2

    .line 3699
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    throw v3
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3714
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3719
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    return v2

    .line 3718
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3718
    throw v3
.end method

.method public getDataRoamingEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5481
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5486
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5489
    return v2

    .line 5483
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5485
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5485
    throw v3
.end method

.method public getDataRoamingEnabledUsingSubID(I)Z
    .locals 6
    .param p1, "subID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5499
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5501
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5504
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5507
    return v2

    .line 5501
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5503
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5503
    throw v3
.end method

.method public getDataServiceState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5569
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5570
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5571
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5574
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5577
    return v2

    .line 5573
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5573
    throw v3
.end method

.method public getDataServiceStateUsingSubId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5585
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5587
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5592
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5595
    return v2

    .line 5591
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5591
    throw v3
.end method

.method public getDataState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3388
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3390
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3393
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3396
    return v2

    .line 3392
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3392
    throw v3
.end method

.method public getDataStateSimSlot(I)I
    .locals 6
    .param p1, "lSubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3406
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3411
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    return v2

    .line 3410
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3410
    throw v3
.end method

.method public getDefaultSim()I
    .locals 6
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3869
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3871
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3874
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    return v2

    .line 3873
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3873
    throw v3
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5138
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5140
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5143
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5146
    return-object v2

    .line 5142
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5142
    throw v3
.end method

.method public getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5192
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5193
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5197
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5200
    return-object v2

    .line 5196
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5196
    throw v3
.end method

.method public getDeviceUAField()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6774
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6776
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6779
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6782
    return-object v2

    .line 6778
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6778
    throw v3
.end method

.method public getDisable2g()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6850
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6851
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6856
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6859
    return v2

    .line 6855
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6855
    throw v3
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6714
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6717
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6718
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6720
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6723
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6726
    return-object v2

    .line 6722
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6722
    throw v3
.end method

.method public getFeliCaUimLockStatus(I)I
    .locals 6
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5788
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5789
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5790
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5795
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5798
    return v2

    .line 5794
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5794
    throw v3
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6091
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6093
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6096
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6099
    return-object v2

    .line 6095
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6095
    throw v3
.end method

.method public getImei()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5729
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5730
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5731
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5734
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5737
    return-object v2

    .line 5733
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5733
    throw v3
.end method

.method public getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5164
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5165
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5166
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5167
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5170
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5173
    return-object v2

    .line 5169
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5169
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2344
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "nwkType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5947
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5948
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5949
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5952
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5955
    return-object v2

    .line 5951
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5951
    throw v3
.end method

.method public getLgt3GDataStatus(I)Ljava/lang/String;
    .locals 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6126
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6128
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6131
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6134
    return-object v2

    .line 6130
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6130
    throw v3
.end method

.method public getLgtOzStartPage()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6143
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xac

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6145
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6148
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6151
    return-object v2

    .line 6147
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6147
    throw v3
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4675
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4681
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4683
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4686
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4689
    return-object v2

    .line 4685
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4685
    throw v3
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4653
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4655
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4658
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4661
    return-object v2

    .line 4657
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4657
    throw v3
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5254
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5256
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5259
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5262
    return-object v2

    .line 5258
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5258
    throw v3
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6029
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6031
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6034
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6037
    return-object v2

    .line 6033
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6033
    throw v3
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3794
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3799
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3802
    return v2

    .line 3798
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3798
    throw v3
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3813
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3815
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3818
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3821
    return v2

    .line 3817
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3817
    throw v3
.end method

.method public getMeid()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5709
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5711
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5714
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5717
    return-object v2

    .line 5713
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5713
    throw v3
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4699
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4701
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4704
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4707
    return-object v2

    .line 4703
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4703
    throw v3
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5929
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5930
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5931
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5934
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5937
    return-object v2

    .line 5933
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5933
    throw v3
.end method

.method public getMultiSimForegroundPhoneId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6477
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6479
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6482
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6485
    return v2

    .line 6481
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6481
    throw v3
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6445
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6450
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6453
    return v2

    .line 6449
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6449
    throw v3
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3319
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3321
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3324
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3327
    return-object v2

    .line 3323
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v3

    .line 3324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    throw v3
.end method

.method public getNetworkType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3658
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3663
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3666
    return v2

    .line 3662
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3662
    throw v3
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3677
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3682
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3685
    return v2

    .line 3681
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3681
    throw v3
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
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
    .line 5392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5397
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5399
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5402
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5405
    return-object v2

    .line 5401
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 5402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5401
    throw v3
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4443
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4444
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4449
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4452
    return-object v2

    .line 4448
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4448
    throw v3
.end method

.method public getPhoneServiceState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6108
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6113
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6116
    return v2

    .line 6112
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6112
    throw v3
.end method

.method public getPreferredNetworkType(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4252
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4255
    return v2

    .line 4251
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4251
    throw v3
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4879
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4880
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4884
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4887
    return v2

    .line 4883
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4883
    throw v3
.end method

.method public getSdnAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5848
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5853
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5856
    return v2

    .line 5850
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5852
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5852
    throw v3
.end method

.method public getServiceState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5534
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5539
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5542
    return v2

    .line 5538
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5538
    throw v3
.end method

.method public getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5301
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5304
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5307
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5314
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5317
    return-object v2

    .line 5310
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 5313
    .end local v2    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v3

    .line 5314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5313
    throw v3
.end method

.method public getServiceStateUsingSubId(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5552
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5557
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5560
    return v2

    .line 5556
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5556
    throw v3
.end method

.method public getSimPinRetry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5746
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5751
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5754
    return v2

    .line 5750
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5750
    throw v3
.end method

.method public getSimPinRetryForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6180
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6185
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6188
    return v2

    .line 6184
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6184
    throw v3
.end method

.method public getSimPukRetry()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5825
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5827
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5830
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5833
    return v2

    .line 5829
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5829
    throw v3
.end method

.method public getSimPukRetryForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6198
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6203
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6206
    return v2

    .line 6202
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6202
    throw v3
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 6
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5208
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5209
    if-eqz p1, :cond_0

    .line 5210
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5211
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5216
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5217
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5221
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5224
    return v2

    .line 5214
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5220
    :catchall_0
    move-exception v3

    .line 5221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5220
    throw v3
.end method

.method public getTetherApnRequired()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4263
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4264
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4269
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4272
    return v2

    .line 4268
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    throw v3
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5995
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5997
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6000
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6003
    return-object v2

    .line 5999
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5999
    throw v3
.end method

.method public getVoiceMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3623
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3625
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3628
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3631
    return v2

    .line 3627
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3627
    throw v3
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3641
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3646
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3649
    return v2

    .line 3645
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3645
    throw v3
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3733
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3738
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3741
    return v2

    .line 3737
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3737
    throw v3
.end method

.method public getVoicePhoneServiceState()Landroid/telephony/ServiceState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5608
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5611
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5618
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5621
    return-object v2

    .line 5614
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 5617
    .end local v2    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v3

    .line 5618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5617
    throw v3
.end method

.method public getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5635
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5638
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5645
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5648
    return-object v2

    .line 5641
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 5644
    .end local v2    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v3

    .line 5645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5644
    throw v3
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5334
    if-eqz p1, :cond_0

    .line 5335
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5336
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5341
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 5344
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5351
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5354
    return-object v2

    .line 5339
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5350
    :catchall_0
    move-exception v3

    .line 5351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5350
    throw v3

    .line 5347
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/net/Uri;
    goto :goto_1
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6012
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6014
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6017
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6020
    return-object v2

    .line 6016
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 6017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6016
    throw v3
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2956
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2961
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2964
    return v2

    .line 2958
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2960
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw v3
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2977
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2980
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2983
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2984
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2988
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2991
    return v2

    .line 2985
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2987
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    throw v3
.end method

.method public hasIccCard()Z
    .locals 6
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3753
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3758
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3761
    return v2

    .line 3755
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3757
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3757
    throw v3
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3776
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3778
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3781
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3784
    return v2

    .line 3778
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3780
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3780
    throw v3
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3959
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3964
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3967
    return v2

    .line 3961
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3963
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3963
    throw v3
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4072
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4073
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4074
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4075
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4076
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4077
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4078
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4083
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4086
    return-object v2

    .line 4082
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4082
    throw v3
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3894
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3896
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3897
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3899
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3900
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3907
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3910
    return-object v2

    .line 3903
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3906
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 3907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3906
    throw v3
.end method

.method public iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3924
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3927
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3934
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3937
    return-object v2

    .line 3930
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3933
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 3934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3933
    throw v3
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4037
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4039
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4040
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4041
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4042
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4047
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4050
    return-object v2

    .line 4046
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4046
    throw v3
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3996
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3997
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3998
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3999
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4000
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4001
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4002
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4004
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4007
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4010
    return-object v2

    .line 4006
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4006
    throw v3
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 6
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4792
    if-nez p2, :cond_0

    .line 4793
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4798
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4799
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4801
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4807
    return v2

    .line 4796
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4803
    :catchall_0
    move-exception v3

    .line 4804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4803
    throw v3
.end method

.method public invokeOemRilRequestRawForSubscriber(I[B[B)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6827
    if-nez p3, :cond_0

    .line 6828
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6833
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6836
    .local v2, "_result":I
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6842
    return v2

    .line 6831
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6838
    :catchall_0
    move-exception v3

    .line 6839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6838
    throw v3
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6679
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6684
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6687
    return v2

    .line 6681
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6683
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6683
    throw v3
.end method

.method public isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6697
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6698
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6703
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6706
    return v2

    .line 6700
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6702
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6702
    throw v3
.end method

.method public isDataConnectivityPossible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3252
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

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

.method public isDualBTConnection()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6560
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6565
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6568
    return v2

    .line 6562
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6564
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6564
    throw v3
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5011
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5012
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5013
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5016
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5019
    return v2

    .line 5013
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5015
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5015
    throw v3
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2673
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2676
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2678
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2683
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    return v2

    .line 2680
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2682
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    throw v3
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2704
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2709
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    return v2

    .line 2706
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2708
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    throw v3
.end method

.method public isImsCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6497
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6502
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6505
    return v2

    .line 6499
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6501
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6501
    throw v3
.end method

.method public isImsRegistered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5031
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5036
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5039
    return v2

    .line 5033
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5035
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5035
    throw v3
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2579
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2584
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    return v2

    .line 2581
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2583
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2583
    throw v3
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2604
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2605
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2610
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2613
    return v2

    .line 2607
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2609
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2609
    throw v3
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2727
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2732
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2735
    return v2

    .line 2729
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2731
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2731
    throw v3
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2752
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2757
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    return v2

    .line 2754
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2756
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
    throw v3
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2653
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2655
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2660
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    return v2

    .line 2657
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2659
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2659
    throw v3
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2626
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2632
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2634
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2637
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2640
    return v2

    .line 2634
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2636
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    throw v3
.end method

.method public isSimFDNEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5442
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5443
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5448
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5451
    return v2

    .line 5445
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5447
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5447
    throw v3
.end method

.method public isSimFDNEnabledForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5461
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5466
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    return v2

    .line 5463
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5465
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5465
    throw v3
.end method

.method public isTtyModeSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4989
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4994
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4997
    return v2

    .line 4991
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4993
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4993
    throw v3
.end method

.method public isVideoCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5687
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5692
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5695
    return v2

    .line 5689
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5691
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5691
    throw v3
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4923
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x72

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4928
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4931
    return v2

    .line 4925
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4927
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4927
    throw v3
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5091
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5096
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5099
    return v2

    .line 5093
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5095
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5095
    throw v3
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5370
    if-eqz p1, :cond_0

    .line 5371
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5372
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5377
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 5382
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5385
    return v2

    .line 5375
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5381
    :catchall_0
    move-exception v3

    .line 5382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5381
    throw v3

    .line 5379
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isVolteAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5067
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5071
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5076
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5079
    return v2

    .line 5073
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5075
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5075
    throw v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5047
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5051
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5053
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5056
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5059
    return v2

    .line 5053
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5055
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5055
    throw v3
.end method

.method public isWorldPhone()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4967
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4968
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4972
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    return v2

    .line 4969
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4971
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4971
    throw v3
.end method

.method public needMobileRadioShutdown()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4821
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4826
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4829
    return v2

    .line 4823
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4825
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4825
    throw v3
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3583
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3588
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3591
    return v2

    .line 3585
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3587
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    throw v3
.end method

.method public notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "date"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6890
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6891
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6892
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6882
    return-void

    .line 6895
    :catchall_0
    move-exception v2

    .line 6896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6895
    throw v2
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6545
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6539
    return-void

    .line 6548
    :catchall_0
    move-exception v2

    .line 6549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6548
    throw v2
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4131
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4133
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4135
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4138
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4141
    return-object v2

    .line 4137
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4137
    throw v3
.end method

.method public nvResetConfig(I)Z
    .locals 6
    .param p1, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4211
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4216
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4219
    return v2

    .line 4213
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4215
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4215
    throw v3
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 6
    .param p1, "preferredRoamingList"    # [B
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
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4185
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

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

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4160
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4165
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4168
    return v2

    .line 4162
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4164
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    throw v3
.end method

.method public prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6908
    if-eqz p1, :cond_0

    .line 6909
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6910
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6915
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6916
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6902
    return-void

    .line 6913
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6919
    :catchall_0
    move-exception v2

    .line 6920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6919
    throw v2
.end method

.method public requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5276
    if-eqz p1, :cond_0

    .line 5277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5278
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5283
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x82

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5271
    return-void

    .line 5281
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5285
    :catchall_0
    move-exception v1

    .line 5286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5285
    throw v1
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4108
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4110
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4113
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4116
    return-object v2

    .line 4112
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4112
    throw v3
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6059
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6062
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6064
    if-eqz p2, :cond_0

    .line 6065
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6066
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6071
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6076
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6079
    return v2

    .line 6069
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6075
    :catchall_0
    move-exception v3

    .line 6076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6075
    throw v3
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "response"    # [B
    .param p3, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5905
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5906
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5908
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5909
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5915
    return v2

    .line 5911
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5911
    throw v3
.end method

.method public setAirplaneMode(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6756
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6757
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xce

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6762
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6765
    return v2

    .line 6761
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6761
    throw v3
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6515
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6516
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6517
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6510
    return-void

    .line 6520
    :catchall_0
    move-exception v2

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6520
    throw v2
.end method

.method public setBTUserWantsSwitchAudio()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6531
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6525
    return-void

    .line 6534
    :catchall_0
    move-exception v2

    .line 6535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6534
    throw v2
.end method

.method public setCellInfoListRate(I)V
    .locals 5
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

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

    .line 3847
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

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4398
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4399
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

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

    .line 4391
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

.method public setDataRoamingEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5518
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5519
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5512
    return-void

    .line 5522
    :catchall_0
    move-exception v2

    .line 5523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    throw v2
.end method

.method public setDisable2g(I)Z
    .locals 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6864
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6869
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6871
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6874
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6877
    return v2

    .line 6871
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6873
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6873
    throw v3
.end method

.method public setDmCmd(I[B)[I
    .locals 6
    .param p1, "cmdCode"    # I
    .param p2, "cmdData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6162
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xad

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6164
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6167
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6170
    return-object v2

    .line 6166
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 6167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6166
    throw v3
.end method

.method public setEPSLOCI([B)V
    .locals 5
    .param p1, "newEpsloci"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6412
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6405
    return-void

    .line 6415
    :catchall_0
    move-exception v2

    .line 6416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6415
    throw v2
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6393
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6394
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6385
    return-void

    .line 6397
    :catchall_0
    move-exception v2

    .line 6398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6397
    throw v2
.end method

.method public setImsRegistrationState(Z)V
    .locals 5
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4463
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4464
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4457
    return-void

    .line 4467
    :catchall_0
    move-exception v2

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4467
    throw v2
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4625
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4626
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4631
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4634
    return v2

    .line 4628
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4630
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4630
    throw v3
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6462
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6455
    return-void

    .line 6465
    :catchall_0
    move-exception v2

    .line 6466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6465
    throw v2
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6430
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6423
    return-void

    .line 6433
    :catchall_0
    move-exception v2

    .line 6434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6433
    throw v2
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6737
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6738
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6743
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6746
    return v2

    .line 6742
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6742
    throw v3
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4286
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    return-void

    .line 4289
    :catchall_0
    move-exception v2

    .line 4290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4289
    throw v2
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4341
    if-eqz p2, :cond_0

    .line 4342
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4343
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4348
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4349
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 4354
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4357
    return v2

    .line 4346
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4353
    :catchall_0
    move-exception v3

    .line 4354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4353
    throw v3

    :cond_1
    move v3, v4

    .line 4348
    goto :goto_1

    .line 4351
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4734
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4739
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4742
    return v2

    .line 4736
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4738
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4738
    throw v3
.end method

.method public setPreferredNetworkType(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4381
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4384
    return v2

    .line 4378
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4380
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4380
    throw v3
.end method

.method public setRadio(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3039
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3040
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3045
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3048
    return v2

    .line 3042
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3044
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    throw v3
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4860
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4861
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4862
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4855
    return-void

    .line 4865
    :catchall_0
    move-exception v2

    .line 4866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4865
    throw v2
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3060
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3062
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3063
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3068
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3071
    return v2

    .line 3065
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3067
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3067
    throw v3
.end method

.method public setRadioPower(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3079
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3083
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3084
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3089
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    return v2

    .line 3086
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3088
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3088
    throw v3
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 4764
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4770
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4771
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4772
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4773
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4774
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4779
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4782
    return v2

    .line 4776
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4778
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4778
    throw v3
.end method

.method public setTransmitPower(I)Z
    .locals 6
    .param p1, "powerLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5667
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x93

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5669
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5672
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5675
    return v2

    .line 5669
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 5671
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 5672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5671
    throw v3
.end method

.method public setUimRemoteLockStatus(I)I
    .locals 6
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5808
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5813
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5816
    return v2

    .line 5812
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5812
    throw v3
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3599
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3604
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3605
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3606
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3611
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    return v2

    .line 3608
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3610
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3610
    throw v3
.end method

.method public shutdownMobileRadios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4840
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4834
    return-void

    .line 4843
    :catchall_0
    move-exception v2

    .line 4844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4843
    throw v2
.end method

.method public silenceRinger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2552
    return-void

    .line 2561
    :catchall_0
    move-exception v2

    .line 2562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw v2
.end method

.method public sms_NSRI_decryptsms(I[B)[B
    .locals 6
    .param p1, "in_len"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6602
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6604
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6607
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6610
    return-object v2

    .line 6606
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6606
    throw v3
.end method

.method public sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 6
    .param p1, "in_len"    # I
    .param p2, "potherphonenumber"    # Ljava/lang/String;
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6620
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6621
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6622
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6624
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6627
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6630
    return-object v2

    .line 6626
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6626
    throw v3
.end method

.method public sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 6
    .param p1, "in_len"    # I
    .param p2, "potherphonenumber"    # Ljava/lang/String;
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6581
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6582
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6583
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6585
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6588
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6591
    return-object v2

    .line 6587
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 6588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6587
    throw v3
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6271
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6265
    return-void

    .line 6274
    :catchall_0
    move-exception v2

    .line 6275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6274
    throw v2
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6299
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    return-void

    .line 6302
    :catchall_0
    move-exception v2

    .line 6303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6302
    throw v2
.end method

.method public startMobileQualityInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5963
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5964
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5957
    return-void

    .line 5966
    :catchall_0
    move-exception v2

    .line 5967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5966
    throw v2
.end method

.method public startVoiceLessOtaProvisioning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5113
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5105
    return-void

    .line 5116
    :catchall_0
    move-exception v2

    .line 5117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5116
    throw v2
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6285
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6279
    return-void

    .line 6288
    :catchall_0
    move-exception v2

    .line 6289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6288
    throw v2
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6313
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6307
    return-void

    .line 6316
    :catchall_0
    move-exception v2

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6316
    throw v2
.end method

.method public stopMobileQualityInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5974
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5977
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5971
    return-void

    .line 5980
    :catchall_0
    move-exception v2

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5980
    throw v2
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 6
    .param p1, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6219
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 6224
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6227
    return v2

    .line 6221
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 6223
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 6224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6223
    throw v3
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2775
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2780
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    return v2

    .line 2777
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2779
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2779
    throw v3
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2801
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2803
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2806
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2809
    return v2

    .line 2803
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2805
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2805
    throw v3
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2873
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2875
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2878
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2881
    return-object v2

    .line 2877
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2877
    throw v3
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2892
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2894
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2897
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2900
    return-object v2

    .line 2896
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2896
    throw v3
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2827
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2832
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2835
    return v2

    .line 2829
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2831
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2831
    throw v3
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2855
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2860
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    return v2

    .line 2857
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2859
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2859
    throw v3
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2911
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2913
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2916
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    return-object v2

    .line 2915
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2915
    throw v3
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2929
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2931
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2933
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2936
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2939
    return-object v2

    .line 2935
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    throw v3
.end method

.method public toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

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

    .line 2996
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

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3021
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3014
    return-void

    .line 3024
    :catchall_0
    move-exception v2

    .line 3025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3024
    throw v2
.end method

.method public transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5768
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5769
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5770
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5771
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5772
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5774
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5777
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5780
    return-object v2

    .line 5776
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5776
    throw v3
.end method

.method public updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3103
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3097
    return-void

    .line 3106
    :catchall_0
    move-exception v2

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3106
    throw v2
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3122
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    return-void

    .line 3125
    :catchall_0
    move-exception v2

    .line 3126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3125
    throw v2
.end method

.method public validateMsisdn()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6791
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6796
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6799
    return v2

    .line 6795
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 6796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6795
    throw v3
.end method
