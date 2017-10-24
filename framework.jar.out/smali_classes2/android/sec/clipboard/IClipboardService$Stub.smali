.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_addClip:I = 0x11

.field static final TRANSACTION_addClipboardEventListener:I = 0x1c

.field static final TRANSACTION_dismissDialog:I = 0x7

.field static final TRANSACTION_getClip:I = 0x19

.field static final TRANSACTION_getClipData:I = 0xa

.field static final TRANSACTION_getClipedStrings:I = 0x12

.field static final TRANSACTION_getClips:I = 0x18

.field static final TRANSACTION_getCount:I = 0x1

.field static final TRANSACTION_isClipboardAllowed:I = 0x13

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x14

.field static final TRANSACTION_isEnabled:I = 0x10

.field static final TRANSACTION_isPackageAllowed:I = 0x15

.field static final TRANSACTION_isShowing:I = 0x6

.field static final TRANSACTION_loadSEClipboard:I = 0xf

.field static final TRANSACTION_pasteClip:I = 0x17

.field static final TRANSACTION_registClipboardWorkingFormUiInterfaces:I = 0x8

.field static final TRANSACTION_removeAll:I = 0x16

.field static final TRANSACTION_removeClip:I = 0x1a

.field static final TRANSACTION_removeClipboardEventListener:I = 0x1d

.field static final TRANSACTION_setClipData:I = 0xb

.field static final TRANSACTION_setClipDataFromOriginal:I = 0xd

.field static final TRANSACTION_setClipDataToSem:I = 0xc

.field static final TRANSACTION_setData:I = 0xe

.field static final TRANSACTION_showDialog:I = 0x3

.field static final TRANSACTION_showDialogWithType:I = 0x4

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterfaces:I = 0x9

.field static final TRANSACTION_updateClip:I = 0x1b

.field static final TRANSACTION_updateDialogShowingState:I = 0x2

.field static final TRANSACTION_updateFilter:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 384
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 43
    :sswitch_0
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v21, 0x1

    return v21

    .line 48
    :sswitch_1
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getCount()I

    move-result v16

    .line 50
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/16 v21, 0x1

    return v21

    .line 56
    .end local v16    # "_result":I
    :sswitch_2
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_0

    const/4 v8, 0x1

    .line 59
    .local v8, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/sec/clipboard/IClipboardService$Stub;->updateDialogShowingState(Z)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/16 v21, 0x1

    return v21

    .line 58
    .end local v8    # "_arg0":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 65
    :sswitch_3
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialog()V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/16 v21, 0x1

    return v21

    .line 72
    :sswitch_4
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    .line 77
    .local v10, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/sec/clipboard/IClipboardService$Stub;->showDialogWithType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/16 v21, 0x1

    return v21

    .line 83
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_5
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    .line 88
    .restart local v10    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/sec/clipboard/IClipboardService$Stub;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/16 v21, 0x1

    return v21

    .line 94
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_6
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isShowing()Z

    move-result v20

    .line 96
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v20, :cond_1

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/16 v21, 0x1

    return v21

    .line 97
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 102
    .end local v20    # "_result":Z
    :sswitch_7
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissDialog()V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/16 v21, 0x1

    return v21

    .line 109
    :sswitch_8
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v5

    .line 112
    .local v5, "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/IClipboardService$Stub;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/16 v21, 0x1

    return v21

    .line 118
    .end local v5    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_9
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v5

    .line 121
    .restart local v5    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/16 v21, 0x1

    return v21

    .line 127
    .end local v5    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_a
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v17

    .line 131
    .local v17, "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v17, :cond_2

    .line 133
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_2
    const/16 v21, 0x1

    return v21

    .line 137
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 143
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_b
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_3

    .line 148
    sget-object v21, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 154
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 157
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v13, v15}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v16

    .line 158
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/16 v21, 0x1

    return v21

    .line 151
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_result":I
    :cond_3
    const/4 v11, 0x0

    .local v11, "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_3

    .line 164
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_c
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_4

    .line 169
    sget-object v21, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 175
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 177
    .restart local v13    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 178
    .restart local v15    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v13, v15}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataToSem(ILcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)I

    move-result v16

    .line 179
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/16 v21, 0x1

    return v21

    .line 172
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_result":I
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_4

    .line 185
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_d
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5

    .line 190
    sget-object v21, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 195
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/sec/clipboard/IClipboardService$Stub;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v16

    .line 196
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v21, 0x1

    return v21

    .line 193
    .end local v16    # "_result":I
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_5

    .line 202
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_e
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_6

    .line 207
    sget-object v21, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 213
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_7

    const/4 v14, 0x1

    .line 215
    .local v14, "_arg2":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 216
    .restart local v15    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v14, v15}, Landroid/sec/clipboard/IClipboardService$Stub;->setData(ILcom/samsung/android/content/clipboard/data/SemClipData;ZI)I

    move-result v16

    .line 217
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/16 v21, 0x1

    return v21

    .line 210
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":I
    .end local v16    # "_result":I
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_6

    .line 213
    .end local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg2":Z
    goto :goto_7

    .line 223
    .end local v3    # "_arg0":I
    .end local v14    # "_arg2":Z
    :sswitch_f
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->loadSEClipboard()V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/16 v21, 0x1

    return v21

    .line 230
    :sswitch_10
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->isEnabled()Z

    move-result v20

    .line 232
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v20, :cond_8

    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/16 v21, 0x1

    return v21

    .line 233
    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    .line 238
    .end local v20    # "_result":Z
    :sswitch_11
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_9

    .line 241
    sget-object v21, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    .line 247
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 248
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/sec/clipboard/IClipboardService$Stub;->addClip(Landroid/content/ClipData;I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/16 v21, 0x1

    return v21

    .line 244
    .end local v9    # "_arg1":I
    :cond_9
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/content/ClipData;
    goto :goto_9

    .line 254
    .end local v4    # "_arg0":Landroid/content/ClipData;
    :sswitch_12
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 259
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipedStrings(II)Ljava/util/List;

    move-result-object v19

    .line 260
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 262
    const/16 v21, 0x1

    return v21

    .line 266
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isClipboardAllowed(I)Z

    move-result v20

    .line 270
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v20, :cond_a

    const/16 v21, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/16 v21, 0x1

    return v21

    .line 271
    :cond_a
    const/16 v21, 0x0

    goto :goto_a

    .line 276
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_14
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isClipboardShareAllowed(I)Z

    move-result v20

    .line 280
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v20, :cond_b

    const/16 v21, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/16 v21, 0x1

    return v21

    .line 281
    :cond_b
    const/16 v21, 0x0

    goto :goto_b

    .line 286
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_15
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 289
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/IClipboardService$Stub;->isPackageAllowed(I)Z

    move-result v20

    .line 290
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v20, :cond_c

    const/16 v21, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/16 v21, 0x1

    return v21

    .line 291
    :cond_c
    const/16 v21, 0x0

    goto :goto_c

    .line 296
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_16
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->removeAll()Z

    move-result v20

    .line 298
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v20, :cond_d

    const/16 v21, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/16 v21, 0x1

    return v21

    .line 299
    :cond_d
    const/16 v21, 0x0

    goto :goto_d

    .line 304
    .end local v20    # "_result":Z
    :sswitch_17
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->pasteClip(Ljava/lang/String;)Z

    move-result v20

    .line 308
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v20, :cond_e

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/16 v21, 0x1

    return v21

    .line 309
    :cond_e
    const/16 v21, 0x0

    goto :goto_e

    .line 314
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_18
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getClips()Ljava/util/List;

    move-result-object v18

    .line 316
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 318
    const/16 v21, 0x1

    return v21

    .line 322
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    :sswitch_19
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 325
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v17

    .line 326
    .restart local v17    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v17, :cond_f

    .line 328
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    :goto_f
    const/16 v21, 0x1

    return v21

    .line 332
    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 338
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :sswitch_1a
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 341
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClip(Ljava/lang/String;)Z

    move-result v20

    .line 342
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v20, :cond_10

    const/16 v21, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/16 v21, 0x1

    return v21

    .line 343
    :cond_10
    const/16 v21, 0x0

    goto :goto_10

    .line 348
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_1b
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 352
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_11

    .line 353
    sget-object v21, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 358
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/sec/clipboard/IClipboardService$Stub;->updateClip(Ljava/lang/String;Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v20

    .line 359
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v20, :cond_12

    const/16 v21, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/16 v21, 0x1

    return v21

    .line 356
    .end local v20    # "_result":Z
    :cond_11
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_11

    .line 360
    .end local v11    # "_arg1":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v20    # "_result":Z
    :cond_12
    const/16 v21, 0x0

    goto :goto_12

    .line 365
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_1c
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v6

    .line 369
    .local v6, "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 370
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/sec/clipboard/IClipboardService$Stub;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/16 v21, 0x1

    return v21

    .line 376
    .end local v6    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v21, "android.sec.clipboard.IClipboardService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    move-result-object v6

    .line 379
    .restart local v6    # "_arg0":Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/sec/clipboard/IClipboardService$Stub;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/16 v21, 0x1

    return v21

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
