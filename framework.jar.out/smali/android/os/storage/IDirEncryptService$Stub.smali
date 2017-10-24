.class public abstract Landroid/os/storage/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Landroid/os/storage/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final TRANSACTION_SetMountSDcardToHelper:I = 0x2a

.field static final TRANSACTION_clearPrefs:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x9

.field static final TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final TRANSACTION_getCurrentStatus:I = 0x6

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getSdCardEncryptionPreferences:I = 0xa

.field static final TRANSACTION_isEncryptionAppliedSDCard:I = 0xe

.field static final TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setNeedToCreateKey:I = 0x29

.field static final TRANSACTION_setPassword:I = 0x5

.field static final TRANSACTION_setSdCardEncryptionPolicy:I = 0xc

.field static final TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final TRANSACTION_unmountSDCardByAdmin:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 366
    const-string/jumbo v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 354
    if-nez p0, :cond_0

    .line 355
    return-object v1

    .line 357
    :cond_0
    const-string/jumbo v1, "IDirEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 358
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_1

    .line 359
    check-cast v0, Landroid/os/storage/IDirEncryptService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 361
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IDirEncryptService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 377
    sparse-switch p1, :sswitch_data_0

    .line 518
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 379
    :sswitch_0
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    return v5

    .line 383
    :sswitch_1
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v2

    .line 386
    .local v2, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v2, :cond_0

    .line 387
    return v1

    .line 389
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v5

    .line 394
    .end local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_2
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v2

    .line 397
    .restart local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v2, :cond_1

    .line 398
    return v1

    .line 400
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    return v5

    .line 405
    .end local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_3
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/os/storage/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v0

    .line 407
    .local v0, "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    return v5

    .line 414
    .end local v0    # "_resultCode":I
    :sswitch_4
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/os/storage/IDirEncryptService$Stub;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result v0

    .line 416
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return v5

    .line 422
    .end local v0    # "_resultCode":I
    :sswitch_5
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->clearPrefs(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v5

    .line 429
    :sswitch_6
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 431
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    return v5

    .line 437
    .end local v0    # "_resultCode":I
    :sswitch_7
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v0

    .line 439
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    return v5

    .line 445
    .end local v0    # "_resultCode":I
    :sswitch_8
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v0

    .line 447
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    return v5

    .line 453
    .end local v0    # "_resultCode":I
    :sswitch_9
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getLastError()I

    move-result v0

    .line 455
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    return v5

    .line 461
    .end local v0    # "_resultCode":I
    :sswitch_a
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v0

    .line 463
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    return v5

    .line 469
    .end local v0    # "_resultCode":I
    :sswitch_b
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v0

    .line 471
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    return v5

    .line 477
    .end local v0    # "_resultCode":I
    :sswitch_c
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v3

    .line 480
    .local v3, "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v3, :cond_2

    .line 482
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    :cond_2
    return v5

    .line 488
    .end local v3    # "policies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :sswitch_d
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->unmountSDCardByAdmin()V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    return v5

    .line 495
    :sswitch_e
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_3

    move v1, v5

    .local v1, "in":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->setNeedToCreateKey(Z)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    return v5

    .line 503
    .end local v1    # "in":Z
    :sswitch_f
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_4

    move v1, v5

    .restart local v1    # "in":Z
    :cond_4
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->SetMountSDcardToHelper(Z)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    return v5

    .line 511
    .end local v1    # "in":Z
    :sswitch_10
    const-string/jumbo v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->isEncryptionAppliedSDCard()Z

    move-result v4

    .line 513
    .local v4, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    return v5

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_10
        0x29 -> :sswitch_e
        0x2a -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
