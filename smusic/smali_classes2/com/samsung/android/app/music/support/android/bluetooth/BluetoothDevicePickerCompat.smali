.class public Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;
.super Ljava/lang/Object;
.source "BluetoothDevicePickerCompat.java"


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String;

.field public static final EXTRA_FILTER_TYPE:Ljava/lang/String;

.field public static final EXTRA_NEED_AUTH:Ljava/lang/String;

.field public static final FILTER_TYPE_AUDIO_AV:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.devicepicker.action.LAUNCH"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->ACTION_LAUNCH:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_NEED_AUTH:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->FILTER_TYPE_AUDIO_AV:I

    return-void

    .line 9
    :cond_1
    const-string v0, "android.bluetooth.devicepicker.action.LAUNCH"

    goto :goto_0

    .line 13
    :cond_2
    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    goto :goto_1

    .line 17
    :cond_3
    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
