.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_addOrRemoveVirtualGamePadDevice:I = 0x31

.field static final TRANSACTION_cancelVibrate:I = 0x16

.field static final TRANSACTION_coverEventFinished:I = 0x22

.field static final TRANSACTION_enablePatialScreen:I = 0x2d

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_getDefaultPointerIcon:I = 0x1a

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0xd

.field static final TRANSACTION_getInboundQueueLength:I = 0x21

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xa

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x10

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x9

.field static final TRANSACTION_getScanCodeState:I = 0x23

.field static final TRANSACTION_getSmartHallFlipState:I = 0x2e

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isDefaultPointerIconChanged:I = 0x1b

.field static final TRANSACTION_isInTabletMode:I = 0x13

.field static final TRANSACTION_monitorInput:I = 0x24

.field static final TRANSACTION_registerHoveringSpenCustomIcon:I = 0x25

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x12

.field static final TRANSACTION_registerMouseCustomIcon:I = 0x29

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x14

.field static final TRANSACTION_reloadMousePointerIcon:I = 0x2b

.field static final TRANSACTION_reloadMousePointerIconForBitmap:I = 0x2c

.field static final TRANSACTION_reloadPointerIcon:I = 0x27

.field static final TRANSACTION_reloadPointerIconForBitmap:I = 0x28

.field static final TRANSACTION_removeHoveringSpenCustomIcon:I = 0x26

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_removeMouseCustomIcon:I = 0x2a

.field static final TRANSACTION_setCoverVerify:I = 0x20

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_setCustomHoverIcon:I = 0x1d

.field static final TRANSACTION_setCustomPointerIcon:I = 0x18

.field static final TRANSACTION_setDefaultPointerIcon:I = 0x19

.field static final TRANSACTION_setEnableTSP:I = 0x32

.field static final TRANSACTION_setFlipCoverTouchEnabled:I = 0x1f

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_setLedState:I = 0x1c

.field static final TRANSACTION_setMonitorChannelFilter:I = 0x30

.field static final TRANSACTION_setPointerIconType:I = 0x17

.field static final TRANSACTION_setStartedShutdown:I = 0x1e

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x2f

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/hardware/input/IInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 50
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 762
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 44
    :sswitch_0
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v5, 0x1

    return v5

    .line 49
    :sswitch_1
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 52
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v43

    .line 53
    .local v43, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v43, :cond_0

    .line 55
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 59
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v6    # "_arg0":I
    .end local v43    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v47

    .line 67
    .local v47, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 69
    const/4 v5, 0x1

    return v5

    .line 73
    .end local v47    # "_result":[I
    :sswitch_3
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 77
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 79
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v34

    .line 81
    .local v34, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 82
    .local v38, "_arg3_length":I
    if-gez v38, :cond_1

    .line 83
    const/16 v37, 0x0

    .line 88
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v46

    .line 89
    .local v46, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v46, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 92
    const/4 v5, 0x1

    return v5

    .line 86
    .end local v46    # "_result":Z
    :cond_1
    move/from16 v0, v38

    new-array v0, v0, [Z

    move-object/from16 v37, v0

    .local v37, "_arg3":[Z
    goto :goto_1

    .line 90
    .end local v37    # "_arg3":[Z
    .restart local v46    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 96
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v34    # "_arg2":[I
    .end local v38    # "_arg3_length":I
    .end local v46    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v5, 0x1

    return v5

    .line 105
    .end local v6    # "_arg0":I
    :sswitch_5
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    sget-object v5, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/InputEvent;

    .line 114
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v46

    .line 116
    .restart local v46    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v46, :cond_4

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v5, 0x1

    return v5

    .line 111
    .end local v7    # "_arg1":I
    .end local v46    # "_result":Z
    :cond_3
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    .line 117
    .end local v22    # "_arg0":Landroid/view/InputEvent;
    .restart local v7    # "_arg1":I
    .restart local v46    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 122
    .end local v7    # "_arg1":I
    .end local v46    # "_result":Z
    :sswitch_6
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 126
    .local v24, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 127
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v41

    .line 128
    .local v41, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v41, :cond_5

    .line 130
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v5, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 134
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 140
    .end local v7    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 144
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 146
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 147
    sget-object v5, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/hardware/input/TouchCalibration;

    .line 152
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v5, 0x1

    return v5

    .line 150
    :cond_6
    const/16 v31, 0x0

    .local v31, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    .line 158
    .end local v7    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v48

    .line 160
    .local v48, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 162
    const/4 v5, 0x1

    return v5

    .line 166
    .end local v48    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 169
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 174
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v48

    .line 175
    .restart local v48    # "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 177
    const/4 v5, 0x1

    return v5

    .line 172
    .end local v48    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :cond_7
    const/16 v20, 0x0

    .local v20, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    .line 181
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_a
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 184
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v40

    .line 185
    .local v40, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v40, :cond_8

    .line 187
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v5, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    :goto_8
    const/4 v5, 0x1

    return v5

    .line 191
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 197
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_b
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 200
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 205
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v45

    .line 206
    .local v45, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    const/4 v5, 0x1

    return v5

    .line 203
    .end local v45    # "_result":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    .line 212
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 215
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 221
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 222
    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v5, 0x1

    return v5

    .line 218
    .end local v28    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .line 228
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 231
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 236
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v49

    .line 237
    .local v49, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 239
    const/4 v5, 0x1

    return v5

    .line 234
    .end local v49    # "_result":[Ljava/lang/String;
    :cond_b
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    .line 243
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 246
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 252
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 253
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v5, 0x1

    return v5

    .line 249
    .end local v28    # "_arg1":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    .line 259
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 262
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 268
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 269
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v5, 0x1

    return v5

    .line 265
    .end local v28    # "_arg1":Ljava/lang/String;
    :cond_d
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_d

    .line 275
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_10
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 278
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 284
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 285
    sget-object v5, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodInfo;

    .line 291
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 292
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/inputmethod/InputMethodSubtype;

    .line 297
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v40

    .line 298
    .restart local v40    # "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v40, :cond_11

    .line 300
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v5, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 306
    :goto_11
    const/4 v5, 0x1

    return v5

    .line 281
    .end local v40    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_e
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_e

    .line 288
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_f
    const/16 v27, 0x0

    .local v27, "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_f

    .line 295
    .end local v27    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_10
    const/16 v32, 0x0

    .local v32, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_10

    .line 304
    .end local v32    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v40    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 310
    .end local v40    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_11
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 313
    sget-object v5, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/input/InputDeviceIdentifier;

    .line 319
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 320
    sget-object v5, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/inputmethod/InputMethodInfo;

    .line 326
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 327
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/inputmethod/InputMethodSubtype;

    .line 333
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 334
    .local v36, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v5, 0x1

    return v5

    .line 316
    .end local v36    # "_arg3":Ljava/lang/String;
    :cond_12
    const/16 v20, 0x0

    .restart local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_12

    .line 323
    .end local v20    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_13
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_13

    .line 330
    .end local v27    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_14
    const/16 v32, 0x0

    .restart local v32    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_14

    .line 340
    .end local v32    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_12
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v18

    .line 343
    .local v18, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v5, 0x1

    return v5

    .line 349
    .end local v18    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_13
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v39

    .line 351
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 357
    .end local v39    # "_result":I
    :sswitch_14
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v19

    .line 360
    .local v19, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v5, 0x1

    return v5

    .line 366
    .end local v19    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_15
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 370
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v30

    .line 372
    .local v30, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 374
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v35

    .line 375
    .local v35, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v8, v2}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v5, 0x1

    return v5

    .line 381
    .end local v6    # "_arg0":I
    .end local v8    # "_arg2":I
    .end local v30    # "_arg1":[J
    .end local v35    # "_arg3":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 385
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    .line 386
    .local v26, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v5, 0x1

    return v5

    .line 392
    .end local v6    # "_arg0":I
    .end local v26    # "_arg1":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 395
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v5, 0x1

    return v5

    .line 401
    .end local v6    # "_arg0":I
    :sswitch_18
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 404
    sget-object v5, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/PointerIcon;

    .line 409
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v5, 0x1

    return v5

    .line 407
    :cond_15
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/view/PointerIcon;
    goto :goto_15

    .line 415
    .end local v23    # "_arg0":Landroid/view/PointerIcon;
    :sswitch_19
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 418
    sget-object v5, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/PointerIcon;

    .line 423
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v5, 0x1

    return v5

    .line 421
    :cond_16
    const/16 v23, 0x0

    .restart local v23    # "_arg0":Landroid/view/PointerIcon;
    goto :goto_16

    .line 429
    .end local v23    # "_arg0":Landroid/view/PointerIcon;
    :sswitch_1a
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v44

    .line 431
    .local v44, "_result":Landroid/view/PointerIcon;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v44, :cond_17

    .line 433
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/view/PointerIcon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_17
    const/4 v5, 0x1

    return v5

    .line 437
    :cond_17
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 443
    .end local v44    # "_result":Landroid/view/PointerIcon;
    :sswitch_1b
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isDefaultPointerIconChanged()Z

    move-result v46

    .line 445
    .restart local v46    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v46, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v5, 0x1

    return v5

    .line 446
    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .line 451
    .end local v46    # "_result":Z
    :sswitch_1c
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v25, 0x1

    .line 454
    .local v25, "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v39

    .line 455
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v5, 0x1

    return v5

    .line 453
    .end local v25    # "_arg0":Z
    .end local v39    # "_result":I
    :cond_19
    const/16 v25, 0x0

    goto :goto_19

    .line 461
    :sswitch_1d
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 464
    sget-object v5, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/PointerIcon;

    .line 469
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v5, 0x1

    return v5

    .line 467
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "_arg0":Landroid/view/PointerIcon;
    goto :goto_1a

    .line 475
    .end local v23    # "_arg0":Landroid/view/PointerIcon;
    :sswitch_1e
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v25, 0x1

    .line 478
    .restart local v25    # "_arg0":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    const/4 v5, 0x1

    return v5

    .line 477
    .end local v25    # "_arg0":Z
    :cond_1b
    const/16 v25, 0x0

    goto :goto_1b

    .line 484
    :sswitch_1f
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v25, 0x1

    .line 487
    .restart local v25    # "_arg0":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setFlipCoverTouchEnabled(Z)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v5, 0x1

    return v5

    .line 486
    .end local v25    # "_arg0":Z
    :cond_1c
    const/16 v25, 0x0

    goto :goto_1c

    .line 493
    :sswitch_20
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 496
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->setCoverVerify(I)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v5, 0x1

    return v5

    .line 502
    .end local v6    # "_arg0":I
    :sswitch_21
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v39

    .line 504
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v5, 0x1

    return v5

    .line 510
    .end local v39    # "_result":I
    :sswitch_22
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->coverEventFinished()V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    const/4 v5, 0x1

    return v5

    .line 517
    :sswitch_23
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 521
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 523
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 524
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v39

    .line 525
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v5, 0x1

    return v5

    .line 531
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v39    # "_result":I
    :sswitch_24
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 534
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v42

    .line 535
    .local v42, "_result":Landroid/view/InputChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v42, :cond_1d

    .line 537
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v5, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    :goto_1d
    const/4 v5, 0x1

    return v5

    .line 541
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 547
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Landroid/view/InputChannel;
    :sswitch_25
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 550
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 555
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v39

    .line 556
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v5, 0x1

    return v5

    .line 553
    .end local v39    # "_result":I
    :cond_1e
    const/16 v17, 0x0

    .local v17, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1e

    .line 562
    .end local v17    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_26
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 565
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->removeHoveringSpenCustomIcon(I)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v5, 0x1

    return v5

    .line 571
    .end local v6    # "_arg0":I
    :sswitch_27
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 575
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 577
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 579
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 580
    sget-object v5, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 586
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg4":I
    move-object/from16 v5, p0

    .line 587
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v5, 0x1

    return v5

    .line 583
    .end local v10    # "_arg4":I
    :cond_1f
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/graphics/Point;
    goto :goto_1f

    .line 593
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/graphics/Point;
    :sswitch_28
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 597
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 599
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 600
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 606
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 607
    sget-object v5, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 613
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    move-object v15, v9

    move/from16 v16, v10

    .line 614
    invoke-virtual/range {v11 .. v16}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v39

    .line 615
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v5, 0x1

    return v5

    .line 603
    .end local v10    # "_arg4":I
    .end local v39    # "_result":I
    :cond_20
    const/4 v14, 0x0

    .local v14, "_arg2":Landroid/graphics/Bitmap;
    goto :goto_20

    .line 610
    .end local v14    # "_arg2":Landroid/graphics/Bitmap;
    :cond_21
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/graphics/Point;
    goto :goto_21

    .line 621
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v9    # "_arg3":Landroid/graphics/Point;
    :sswitch_29
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 624
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 629
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v39

    .line 630
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v5, 0x1

    return v5

    .line 627
    .end local v39    # "_result":I
    :cond_22
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_22

    .line 636
    .end local v17    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_2a
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 639
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->removeMouseCustomIcon(I)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v5, 0x1

    return v5

    .line 645
    .end local v6    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 649
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 651
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 653
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    .line 654
    sget-object v5, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 660
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    move-object/from16 v5, p0

    .line 661
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v5, 0x1

    return v5

    .line 657
    .end local v10    # "_arg4":I
    :cond_23
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/graphics/Point;
    goto :goto_23

    .line 667
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/graphics/Point;
    :sswitch_2c
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 671
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 673
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    .line 674
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 680
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 681
    sget-object v5, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 687
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    move-object/from16 v11, p0

    move v12, v6

    move v13, v7

    move-object v15, v9

    move/from16 v16, v10

    .line 688
    invoke-virtual/range {v11 .. v16}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v39

    .line 689
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    const/4 v5, 0x1

    return v5

    .line 677
    .end local v10    # "_arg4":I
    .end local v39    # "_result":I
    :cond_24
    const/4 v14, 0x0

    .restart local v14    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_24

    .line 684
    .end local v14    # "_arg2":Landroid/graphics/Bitmap;
    :cond_25
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Landroid/graphics/Point;
    goto :goto_25

    .line 695
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v9    # "_arg3":Landroid/graphics/Point;
    :sswitch_2d
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v25, 0x1

    .line 698
    .restart local v25    # "_arg0":Z
    :goto_26
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->enablePatialScreen(Z)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v5, 0x1

    return v5

    .line 697
    .end local v25    # "_arg0":Z
    :cond_26
    const/16 v25, 0x0

    goto :goto_26

    .line 704
    :sswitch_2e
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getSmartHallFlipState()I

    move-result v39

    .line 706
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v5, 0x1

    return v5

    .line 712
    .end local v39    # "_result":I
    :sswitch_2f
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 716
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v29, 0x1

    .line 718
    .local v29, "_arg1":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 719
    .local v33, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v29

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v5, 0x1

    return v5

    .line 716
    .end local v29    # "_arg1":Z
    .end local v33    # "_arg2":Ljava/lang/String;
    :cond_27
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_27

    .line 725
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Z
    :sswitch_30
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    .line 728
    sget-object v5, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/InputChannel;

    .line 734
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 735
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/hardware/input/IInputManager$Stub;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v5, 0x1

    return v5

    .line 731
    .end local v7    # "_arg1":I
    :cond_28
    const/16 v21, 0x0

    .local v21, "_arg0":Landroid/view/InputChannel;
    goto :goto_28

    .line 741
    .end local v21    # "_arg0":Landroid/view/InputChannel;
    :sswitch_31
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v25, 0x1

    .line 744
    .restart local v25    # "_arg0":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addOrRemoveVirtualGamePadDevice(Z)I

    move-result v39

    .line 745
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    const/4 v5, 0x1

    return v5

    .line 743
    .end local v25    # "_arg0":Z
    .end local v39    # "_result":I
    :cond_29
    const/16 v25, 0x0

    goto :goto_29

    .line 751
    :sswitch_32
    const-string/jumbo v5, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 755
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v29, 0x1

    .line 756
    .local v29, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/hardware/input/IInputManager$Stub;->setEnableTSP(IZ)Z

    move-result v46

    .line 757
    .restart local v46    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v46, :cond_2b

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v5, 0x1

    return v5

    .line 755
    .end local v29    # "_arg1":Z
    .end local v46    # "_result":Z
    :cond_2a
    const/16 v29, 0x0

    goto :goto_2a

    .line 758
    .restart local v29    # "_arg1":Z
    .restart local v46    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    goto :goto_2b

    .line 40
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
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
