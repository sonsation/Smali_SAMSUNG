.class public Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;
.super Ljava/lang/Object;
.source "DrmInfoRequestCompat.java"


# static fields
.field public static final DRM_PATH:Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String;

.field public static final TYPE_GET_DRMFILE_INFO:I

.field public static final TYPE_GET_OPTION_MENU:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0xe

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "drm_path"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->DRM_PATH:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_DRMFILE_INFO:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v2, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_OPTION_MENU:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "status"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->STATUS:Ljava/lang/String;

    return-void

    .line 10
    :cond_2
    const-string v0, "drm_path"

    goto :goto_0

    .line 21
    :cond_3
    const-string/jumbo v0, "status"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
