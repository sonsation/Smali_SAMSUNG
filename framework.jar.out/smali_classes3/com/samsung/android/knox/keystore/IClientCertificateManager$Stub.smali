.class public abstract Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.super Landroid/os/Binder;
.source "IClientCertificateManager.java"

# interfaces
.implements Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/IClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.keystore.IClientCertificateManager"

.field static final TRANSACTION_addPackageToExemptList:I = 0x14

.field static final TRANSACTION_deleteCCMProfile:I = 0x7

.field static final TRANSACTION_deleteCSRProfile:I = 0xf

.field static final TRANSACTION_deleteCertificate:I = 0x9

.field static final TRANSACTION_generateCSR:I = 0x1

.field static final TRANSACTION_generateCSRUsingByteArray:I = 0x11

.field static final TRANSACTION_generateCSRUsingString:I = 0x12

.field static final TRANSACTION_generateCSRUsingTemplate:I = 0x10

.field static final TRANSACTION_generateKeyPair:I = 0x4

.field static final TRANSACTION_getAliasesForCaller:I = 0x19

.field static final TRANSACTION_getAliasesForPackage:I = 0x25

.field static final TRANSACTION_getAliasesForWiFi:I = 0x1b

.field static final TRANSACTION_getCCMProfile:I = 0x6

.field static final TRANSACTION_getCCMVersion:I = 0x16

.field static final TRANSACTION_getCertificateAliases:I = 0x20

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x21

.field static final TRANSACTION_getDefaultCertificateAlias:I = 0x18

.field static final TRANSACTION_getKeyChainMarkedAliases:I = 0x1e

.field static final TRANSACTION_getSlotIdForCaller:I = 0xc

.field static final TRANSACTION_getSlotIdForPackage:I = 0xd

.field static final TRANSACTION_hasGrant:I = 0x2a

.field static final TRANSACTION_insertOrUpdateCCMProfile:I = 0x23

.field static final TRANSACTION_insertOrUpdateCertificateProfile:I = 0x24

.field static final TRANSACTION_installCertificate:I = 0x8

.field static final TRANSACTION_installKeyPair:I = 0x27

.field static final TRANSACTION_installObject:I = 0x3

.field static final TRANSACTION_installObjectWithProfile:I = 0x22

.field static final TRANSACTION_installObjectWithType:I = 0x17

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x1a

.field static final TRANSACTION_isCCMEmptyForKeyChain:I = 0x1f

.field static final TRANSACTION_isCCMPolicyEnabledByAdmin:I = 0x13

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0xa

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0xb

.field static final TRANSACTION_isKeyChainMarkedAlias:I = 0x1c

.field static final TRANSACTION_keychainMarkedReset:I = 0x1d

.field static final TRANSACTION_registerForDefaultCertificate:I = 0x2

.field static final TRANSACTION_removeKeyPair:I = 0x28

.field static final TRANSACTION_removePackageFromExemptList:I = 0x15

.field static final TRANSACTION_setCCMProfile:I = 0x5

.field static final TRANSACTION_setCSRProfile:I = 0xe

.field static final TRANSACTION_setDefaultCCMProfile:I = 0x26

.field static final TRANSACTION_setGrant:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 798
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v10, 0x1

    .local v10, "_arg5":Z
    :goto_1
    move-object/from16 v4, p0

    .line 69
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v50

    .line 70
    .local v50, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 57
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Z
    .end local v50    # "_result":[B
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_0

    .line 68
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 76
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 85
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 87
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v16, 0x1

    .local v16, "_arg4":Z
    :goto_3
    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 92
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v43

    .line 93
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v4, 0x1

    return v4

    .line 82
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    .end local v43    # "_result":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2

    .line 91
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 99
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 108
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 114
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 118
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 120
    .local v24, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 122
    .local v25, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v26, 0x1

    .local v26, "_arg8":Z
    :goto_5
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 123
    invoke-virtual/range {v17 .. v26}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v43

    .line 124
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v4, 0x1

    return v4

    .line 105
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":Ljava/lang/String;
    .end local v26    # "_arg8":Z
    .end local v43    # "_result":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_4

    .line 122
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v23    # "_arg5":I
    .restart local v24    # "_arg6":[B
    .restart local v25    # "_arg7":Ljava/lang/String;
    :cond_5
    const/16 v26, 0x0

    goto :goto_5

    .line 130
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":[B
    .end local v25    # "_arg7":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 139
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 141
    .local v19, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 142
    .local v30, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v30

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B

    move-result-object v50

    .line 143
    .restart local v50    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 136
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":I
    .end local v50    # "_result":[B
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_6

    .line 149
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 158
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 159
    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/samsung/android/knox/keystore/CCMProfile;

    .line 164
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v49

    .line 165
    .local v49, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v49, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v4, 0x1

    return v4

    .line 155
    .end local v49    # "_result":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_7

    .line 162
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_8
    const/16 v40, 0x0

    .local v40, "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    goto :goto_8

    .line 166
    .end local v40    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    .restart local v49    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 171
    .end local v49    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 174
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 179
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v46

    .line 180
    .local v46, "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v46, :cond_b

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/knox/keystore/CCMProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 177
    .end local v46    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_a

    .line 186
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v46    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 192
    .end local v46    # "_result":Lcom/samsung/android/knox/keystore/CCMProfile;
    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 195
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 200
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v49

    .line 201
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v49, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v4, 0x1

    return v4

    .line 198
    .end local v49    # "_result":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_c

    .line 202
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v49    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 207
    .end local v49    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 210
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 216
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 217
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 223
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    .line 225
    .local v34, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v49

    .line 227
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v49, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v4, 0x1

    return v4

    .line 213
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v34    # "_arg2":[B
    .end local v49    # "_result":Z
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_e

    .line 220
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_f
    const/16 v29, 0x0

    .local v29, "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_f

    .line 228
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v34    # "_arg2":[B
    .restart local v49    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 233
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v34    # "_arg2":[B
    .end local v49    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 236
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 242
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 243
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 244
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v49, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    return v4

    .line 239
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_11
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_11

    .line 245
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 250
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 253
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 258
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v49

    .line 259
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v49, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v4, 0x1

    return v4

    .line 256
    .end local v49    # "_result":Z
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_13

    .line 260
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v49    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 265
    .end local v49    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 268
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 274
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 275
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 276
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v49, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v4, 0x1

    return v4

    .line 271
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_15
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_15

    .line 277
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 282
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 285
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 291
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 292
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v44

    .line 293
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    const/4 v4, 0x1

    return v4

    .line 288
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":J
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_17

    .line 299
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 302
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 308
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 310
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 311
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v44

    .line 312
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    const/4 v4, 0x1

    return v4

    .line 305
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":J
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_18

    .line 318
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 321
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 327
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 328
    sget-object v4, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/samsung/android/knox/keystore/CSRProfile;

    .line 333
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v49

    .line 334
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v49, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v4, 0x1

    return v4

    .line 324
    .end local v49    # "_result":Z
    :cond_19
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_19

    .line 331
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_1a
    const/16 v41, 0x0

    .local v41, "_arg1":Lcom/samsung/android/knox/keystore/CSRProfile;
    goto :goto_1a

    .line 335
    .end local v41    # "_arg1":Lcom/samsung/android/knox/keystore/CSRProfile;
    .restart local v49    # "_result":Z
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 340
    .end local v49    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 343
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 349
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 350
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 351
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v49, :cond_1d

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v4, 0x1

    return v4

    .line 346
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_1c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1c

    .line 352
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    .line 357
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 360
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 366
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 368
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 370
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 371
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7, v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v50

    .line 372
    .restart local v50    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 374
    const/4 v4, 0x1

    return v4

    .line 363
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":[B
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1e

    .line 378
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_11
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 381
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 387
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 389
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 391
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 393
    .local v21, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg4":I
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    .line 394
    invoke-virtual/range {v17 .. v22}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v50

    .line 395
    .restart local v50    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 397
    const/4 v4, 0x1

    return v4

    .line 384
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v22    # "_arg4":I
    .end local v50    # "_result":[B
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_1f

    .line 401
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_12
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 404
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 410
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 412
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 416
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg4":I
    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v29, v19

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v22

    .line 417
    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v50

    .line 418
    .restart local v50    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 420
    const/4 v4, 0x1

    return v4

    .line 407
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg4":I
    .end local v50    # "_result":[B
    :cond_20
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_20

    .line 424
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_13
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 427
    .local v38, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v49

    .line 428
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v49, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v4, 0x1

    return v4

    .line 429
    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    .line 434
    .end local v38    # "_arg0":I
    .end local v49    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 437
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 443
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 444
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 445
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v49, :cond_23

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v4, 0x1

    return v4

    .line 440
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_22
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_22

    .line 446
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_23
    const/4 v4, 0x0

    goto :goto_23

    .line 451
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 454
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 460
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 461
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 462
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v49, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v4, 0x1

    return v4

    .line 457
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_24
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_24

    .line 463
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    .line 468
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMVersion()Ljava/lang/String;

    move-result-object v47

    .line 470
    .local v47, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    const/4 v4, 0x1

    return v4

    .line 476
    .end local v47    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 479
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 485
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 487
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 489
    .restart local v30    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 491
    .restart local v21    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v29, v19

    move-object/from16 v31, v21

    move-object/from16 v32, v9

    .line 492
    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z

    move-result v49

    .line 493
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v49, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v4, 0x1

    return v4

    .line 482
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v30    # "_arg2":I
    .end local v49    # "_result":Z
    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_26

    .line 494
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v21    # "_arg3":[B
    .restart local v30    # "_arg2":I
    .restart local v49    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 499
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v30    # "_arg2":I
    .end local v49    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v47

    .line 501
    .restart local v47    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    const/4 v4, 0x1

    return v4

    .line 507
    .end local v47    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 510
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 515
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v48

    .line 516
    .local v48, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 518
    const/4 v4, 0x1

    return v4

    .line 513
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_28

    .line 522
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_1a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 525
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 530
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v49

    .line 531
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v49, :cond_2a

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v4, 0x1

    return v4

    .line 528
    .end local v49    # "_result":Z
    :cond_29
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_29

    .line 532
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v49    # "_result":Z
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2a

    .line 537
    .end local v49    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v48

    .line 539
    .restart local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 541
    const/4 v4, 0x1

    return v4

    .line 545
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 548
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 554
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 555
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 556
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v49, :cond_2c

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v4, 0x1

    return v4

    .line 551
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2b

    .line 557
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2c

    .line 562
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 565
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 570
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v49

    .line 571
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v49, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v4, 0x1

    return v4

    .line 568
    .end local v49    # "_result":Z
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d

    .line 572
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v49    # "_result":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 577
    .end local v49    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 580
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 585
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v48

    .line 586
    .restart local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 588
    const/4 v4, 0x1

    return v4

    .line 583
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2f

    .line 592
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_1f
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 595
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 600
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v49

    .line 601
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v49, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v4, 0x1

    return v4

    .line 598
    .end local v49    # "_result":Z
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_30

    .line 602
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v49    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    .line 607
    .end local v49    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 610
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 615
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v48

    .line 616
    .restart local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 613
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_32

    .line 622
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_21
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 625
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 630
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v48

    .line 631
    .restart local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 633
    const/4 v4, 0x1

    return v4

    .line 628
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_33

    .line 637
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_22
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 640
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 646
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 647
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 653
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 655
    .restart local v30    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 657
    .restart local v21    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v31, v21

    move-object/from16 v32, v9

    .line 658
    invoke-virtual/range {v27 .. v32}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v49

    .line 659
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    if-eqz v49, :cond_36

    const/4 v4, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v4, 0x1

    return v4

    .line 643
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v30    # "_arg2":I
    .end local v49    # "_result":Z
    :cond_34
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_34

    .line 650
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_35
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_35

    .line 660
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v21    # "_arg3":[B
    .restart local v30    # "_arg2":I
    .restart local v49    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_36

    .line 665
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v30    # "_arg2":I
    .end local v49    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 668
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 674
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 675
    sget-object v4, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/samsung/android/knox/keystore/CCMProfile;

    .line 680
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v49

    .line 681
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v49, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    const/4 v4, 0x1

    return v4

    .line 671
    .end local v49    # "_result":Z
    :cond_37
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_37

    .line 678
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_38
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    goto :goto_38

    .line 682
    .end local v40    # "_arg1":Lcom/samsung/android/knox/keystore/CCMProfile;
    .restart local v49    # "_result":Z
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 687
    .end local v49    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 690
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 696
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 697
    sget-object v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/keystore/CertificateProfile;

    .line 702
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z

    move-result v49

    .line 703
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v49, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v4, 0x1

    return v4

    .line 693
    .end local v49    # "_result":Z
    :cond_3a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_3a

    .line 700
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :cond_3b
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    goto :goto_3b

    .line 704
    .end local v29    # "_arg1":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .restart local v49    # "_result":Z
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    .line 709
    .end local v49    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 712
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 718
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 719
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    .line 720
    .restart local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 722
    const/4 v4, 0x1

    return v4

    .line 715
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_3d

    .line 726
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    :sswitch_26
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setDefaultCCMProfile()Z

    move-result v49

    .line 728
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v49, :cond_3e

    const/4 v4, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v4, 0x1

    return v4

    .line 729
    :cond_3e
    const/4 v4, 0x0

    goto :goto_3e

    .line 734
    .end local v49    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 737
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 743
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    .line 745
    .local v33, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    .line 747
    .restart local v34    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 749
    .restart local v21    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 751
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "_arg5":Ljava/lang/String;
    move-object/from16 v31, p0

    move-object/from16 v32, v5

    move-object/from16 v35, v21

    move-object/from16 v36, v9

    .line 752
    invoke-virtual/range {v31 .. v37}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v49

    .line 753
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    if-eqz v49, :cond_40

    const/4 v4, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v4, 0x1

    return v4

    .line 740
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v33    # "_arg1":[B
    .end local v34    # "_arg2":[B
    .end local v37    # "_arg5":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_3f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_3f

    .line 754
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v9    # "_arg4":Ljava/lang/String;
    .restart local v21    # "_arg3":[B
    .restart local v33    # "_arg1":[B
    .restart local v34    # "_arg2":[B
    .restart local v37    # "_arg5":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_40
    const/4 v4, 0x0

    goto :goto_40

    .line 759
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":[B
    .end local v33    # "_arg1":[B
    .end local v34    # "_arg2":[B
    .end local v37    # "_arg5":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 762
    sget-object v4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ContextInfo;

    .line 768
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 769
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v49

    .line 770
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v49, :cond_42

    const/4 v4, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v4, 0x1

    return v4

    .line 765
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :cond_41
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_41

    .line 771
    .end local v5    # "_arg0":Lcom/samsung/android/knox/ContextInfo;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v49    # "_result":Z
    :cond_42
    const/4 v4, 0x0

    goto :goto_42

    .line 776
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 780
    .restart local v38    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 782
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    const/16 v42, 0x1

    .line 783
    .local v42, "_arg2":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v19

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setGrant(ILjava/lang/String;Z)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v4, 0x1

    return v4

    .line 782
    .end local v42    # "_arg2":Z
    :cond_43
    const/16 v42, 0x0

    goto :goto_43

    .line 789
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v38    # "_arg0":I
    :sswitch_2a
    const-string/jumbo v4, "com.samsung.android.knox.keystore.IClientCertificateManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 792
    .local v39, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrant(Ljava/lang/String;)Z

    move-result v49

    .line 793
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    if-eqz v49, :cond_44

    const/4 v4, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v4, 0x1

    return v4

    .line 794
    :cond_44
    const/4 v4, 0x0

    goto :goto_44

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
