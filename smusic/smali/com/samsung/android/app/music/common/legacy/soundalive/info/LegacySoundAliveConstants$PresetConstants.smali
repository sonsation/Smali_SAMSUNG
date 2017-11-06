.class public Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;
.super Ljava/lang/Object;
.source "LegacySoundAliveConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetConstants"
.end annotation


# static fields
.field public static final AUTO:I = -0x1

.field public static final BASS_BOOST:I

.field public static final CAFE:I

.field public static final CLASSIC:I

.field public static final CONCERT_HALL:I

.field public static final DANCE:I

.field public static final EXTERNALIZATION:I

.field public static final JAZZ:I

.field public static final MTHEATER:I

.field public static final NORMAL:I

.field public static final POP:I

.field public static final ROCK:I

.field public static final TREBLE_BOOST:I

.field public static final TUBE_SOUND:I

.field public static final UNKNOWN:I = -0x64

.field public static final USER:I

.field public static final VOCAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 62
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->POP:I

    .line 64
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->ROCK:I

    .line 66
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_DANCE:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->DANCE:I

    .line 68
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->JAZZ:I

    .line 70
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CLASSIC:I

    .line 72
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_SAMSUNG_TUBE_SOUND:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->TUBE_SOUND:I

    .line 75
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_VOCAL:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->VOCAL:I

    .line 77
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_BASS_BOOST:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->BASS_BOOST:I

    .line 80
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_TREBLE_BOOST:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->TREBLE_BOOST:I

    .line 83
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_MTHEATER:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->MTHEATER:I

    .line 85
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_EXTERNALIZATION:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->EXTERNALIZATION:I

    .line 88
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CAFE:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CAFE:I

    .line 90
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CONCERT_HALL:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CONCERT_HALL:I

    .line 93
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    sput v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
