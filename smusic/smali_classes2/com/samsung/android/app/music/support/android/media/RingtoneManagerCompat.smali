.class public Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;
.super Ljava/lang/Object;
.source "RingtoneManagerCompat.java"


# static fields
.field public static final TYPE_RINGTONE_2:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 14
    sput v1, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
