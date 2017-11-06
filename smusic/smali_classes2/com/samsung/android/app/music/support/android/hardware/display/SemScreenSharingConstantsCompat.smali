.class public Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;
.super Ljava/lang/Object;
.source "SemScreenSharingConstantsCompat.java"


# static fields
.field public static final NOT_SUPPORT:I

.field public static final SUPPORT_ALL:I

.field public static final SUPPORT_DLNA:I

.field public static final SUPPORT_MIRRORING:I

.field public static final TYPE_IMAGE:I

.field public static final TYPE_MUSIC:I

.field public static final TYPE_VIDEO:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->NOT_SUPPORT:I

    .line 29
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    .line 30
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_DLNA:I

    .line 31
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    .line 32
    sput v2, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_IMAGE:I

    .line 33
    sput v3, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    .line 34
    sput v1, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_VIDEO:I

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_NOT_SUPPORT:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->NOT_SUPPORT:I

    .line 37
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_ALL:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_ALL:I

    .line 38
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_DLNA:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_DLNA:I

    .line 39
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_SUPPORT_MIRRORING:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->SUPPORT_MIRRORING:I

    .line 40
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_IMAGE:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_IMAGE:I

    .line 41
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_MUSIC:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_MUSIC:I

    .line 42
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/ScreenSharingFieldSdlCompat;->SCREEN_SHARING_TYPE_VIDEO:I

    sput v0, Lcom/samsung/android/app/music/support/android/hardware/display/SemScreenSharingConstantsCompat;->TYPE_VIDEO:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
