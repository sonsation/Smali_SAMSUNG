.class public Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;
.super Ljava/lang/Object;
.source "DlnaDeviceCompat.java"


# static fields
.field public static final STATE_CONNECTED:I

.field public static final STATE_CONNECTING:I

.field public static final STATE_ERROR:I

.field public static final STATE_NOT_CONNECTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 20
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_NOT_CONNECTED:I

    .line 21
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTED:I

    .line 22
    sput v4, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    .line 23
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_ERROR:I

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_NOT_CONNECTED:I

    .line 26
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTED:I

    .line 27
    sput v4, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    .line 28
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_ERROR:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
