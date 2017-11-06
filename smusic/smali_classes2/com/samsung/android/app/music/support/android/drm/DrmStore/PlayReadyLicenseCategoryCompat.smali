.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;
.super Ljava/lang/Object;
.source "PlayReadyLicenseCategoryCompat.java"


# static fields
.field public static final DRM_LICENSE_STATE_COUNT:I

.field public static final DRM_LICENSE_STATE_COUNT_FROM:I

.field public static final DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

.field public static final DRM_LICENSE_STATE_COUNT_UNTIL:I

.field public static final DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

.field public static final DRM_LICENSE_STATE_FORCE_SYNC:I

.field public static final DRM_LICENSE_STATE_FROM:I

.field public static final DRM_LICENSE_STATE_FROM_UNTIL:I

.field public static final DRM_LICENSE_STATE_NORIGHT:I

.field public static final DRM_LICENSE_STATE_UNLIM:I

.field public static final DRM_LICENSE_STATE_UNTIL:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_NORIGHT:I

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v2, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNLIM:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    :cond_2
    sput v3, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    :cond_3
    sput v4, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    :cond_4
    sput v5, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNTIL:I

    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM_UNTIL:I

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM:I

    .line 37
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    .line 45
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    :goto_5
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FORCE_SYNC:I

    return-void

    .line 29
    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 33
    :cond_6
    const/4 v0, 0x6

    goto :goto_1

    .line 37
    :cond_7
    const/4 v0, 0x7

    goto :goto_2

    .line 41
    :cond_8
    const/16 v0, 0x8

    goto :goto_3

    .line 45
    :cond_9
    const/16 v0, 0x9

    goto :goto_4

    .line 49
    :cond_a
    const/16 v0, 0xa

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
