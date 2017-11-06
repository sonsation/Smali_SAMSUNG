.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;
.super Ljava/lang/Object;
.source "MusicStaticFeatures.java"


# static fields
.field public static final ACTIVITY_ALBUM_TRACK_TRANSITION_ENABLED:Z

.field public static final ARTWORK_CROSS_FADE:Z = true

.field public static final ARTWORK_DISK_CACHE_ENABLED:Z = true

.field public static final DISPLAY_BUFFERING_ENABLED:Z = false

.field public static final DYNAMIC_TABS_ENABLED:Z = true

.field public static final MUSIC_PROVIDER_ENABLED:Z = false

.field public static final ROUND_CHECK_BOX:Z

.field public static final SEARCH_ICON:Z = true

.field public static final STATUS_LOGGING_PERIOD_ENABLED:Z

.field public static final SUPPORT_LEGACY_BT_AVRCP:Z

.field public static final SUPPORT_PICKER_INDEX_FAST_SCROLL:Z

.field public static final VI_FULL_PLAYER_TO_DETAILS:Z

.field public static final VI_TRANSITION_PLAYER_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x18ed7

    if-ge v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->VI_FULL_PLAYER_TO_DETAILS:Z

    .line 23
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ACTIVITY_ALBUM_TRACK_TRANSITION_ENABLED:Z

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_3

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_PICKER_INDEX_FAST_SCROLL:Z

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_4

    :goto_3
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_LEGACY_BT_AVRCP:Z

    return-void

    :cond_1
    move v0, v1

    .line 17
    goto :goto_0

    :cond_2
    move v0, v1

    .line 35
    goto :goto_1

    :cond_3
    move v0, v1

    .line 41
    goto :goto_2

    :cond_4
    move v2, v1

    .line 53
    goto :goto_3
.end method
