.class public Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;
.super Ljava/lang/Object;
.source "BtDevicePicker.java"


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String;

.field public static final EXTRA_FILTER_TYPE:Ljava/lang/String;

.field public static final EXTRA_IS_FROM_BT_HEADSET:Ljava/lang/String; = "android.bluetooth.FromHeadsetActivity"

.field public static final EXTRA_NEED_AUTH:Ljava/lang/String;

.field public static final FILTER_TYPE_AUDIO_AV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->ACTION_LAUNCH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->ACTION_LAUNCH:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_NEED_AUTH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->EXTRA_NEED_AUTH:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->EXTRA_FILTER_TYPE:Ljava/lang/String;

    .line 40
    sget v0, Lcom/samsung/android/app/music/support/android/bluetooth/BluetoothDevicePickerCompat;->FILTER_TYPE_AUDIO_AV:I

    sput v0, Lcom/samsung/android/app/music/library/framework/audio/BtDevicePicker;->FILTER_TYPE_AUDIO_AV:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
