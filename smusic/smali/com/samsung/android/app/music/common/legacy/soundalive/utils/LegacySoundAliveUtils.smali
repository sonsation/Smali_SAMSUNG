.class public final Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;
.super Ljava/lang/Object;
.source "LegacySoundAliveUtils.java"


# static fields
.field private static final LEGACY_PRESET_LIST:[I

.field private static final SUPPORT_STEREO_SPEAKER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "1"

    const-string/jumbo v1, "persist.audio.stereoapeaker"

    .line 33
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->SUPPORT_STEREO_SPEAKER:Z

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->POP:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->ROCK:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->DANCE:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->JAZZ:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CLASSIC:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->TUBE_SOUND:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->VOCAL:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->BASS_BOOST:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->TREBLE_BOOST:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->MTHEATER:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->EXTERNALIZATION:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CAFE:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CONCERT_HALL:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->LEGACY_PRESET_LIST:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getLegacySoundAlivePreset()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0xd

    .line 116
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPreset(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->LEGACY_PRESET_LIST:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getPresetErrorMessage(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preset"    # I

    .prologue
    .line 76
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    .line 77
    .local v0, "am":Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    const/4 v1, -0x1

    .line 79
    .local v1, "message":I
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 99
    .end local v1    # "message":I
    .local v2, "message":I
    :goto_0
    return v2

    .line 82
    .end local v2    # "message":I
    .restart local v1    # "message":I
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->isSupportSoundAliveBT(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    const v1, 0x7f0a00e4

    :cond_1
    :goto_1
    move v2, v1

    .line 99
    .end local v1    # "message":I
    .restart local v2    # "message":I
    goto :goto_0

    .line 86
    .end local v2    # "message":I
    .restart local v1    # "message":I
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathLineOut()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-static {p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->isSupportSoundAliveLineOut(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const v1, 0x7f0a00e6

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathHdmi()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->isSupportSoundAliveHDMI(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const v1, 0x7f0a00e5

    goto :goto_1

    .line 95
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->isSupportSoundAliveSpeaker(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    const v1, 0x7f0a00e7

    goto :goto_1
.end method

.method public static getPresetPosition(I)I
    .locals 3
    .param p0, "preset"    # I

    .prologue
    .line 56
    sget-object v2, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->LEGACY_PRESET_LIST:[I

    array-length v0, v2

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    sget-object v2, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->LEGACY_PRESET_LIST:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    .line 62
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 57
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isSupportSoundAliveBT(I)Z
    .locals 1
    .param p0, "preset"    # I

    .prologue
    .line 158
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->POP:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->ROCK:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->DANCE:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->JAZZ:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CLASSIC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSoundAliveHDMI(I)Z
    .locals 1
    .param p0, "preset"    # I

    .prologue
    .line 198
    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSoundAliveLineOut(I)Z
    .locals 1
    .param p0, "preset"    # I

    .prologue
    .line 182
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->POP:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->ROCK:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->DANCE:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->JAZZ:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->CLASSIC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSoundAliveSpeaker(I)Z
    .locals 1
    .param p0, "preset"    # I

    .prologue
    .line 135
    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->MTHEATER:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->EXTERNALIZATION:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->TUBE_SOUND:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->BASS_BOOST:I

    if-ne p0, v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->SUPPORT_STEREO_SPEAKER:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchSoundAlive(Landroid/app/Activity;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 206
    .local v2, "fm":Landroid/app/FragmentManager;
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 207
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 208
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;-><init>()V

    .line 209
    .local v0, "dialog":Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    .end local v0    # "dialog":Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
    :cond_0
    return-void
.end method

.method public static setLegacySoundAlivePreset(I)V
    .locals 2
    .param p0, "preset"    # I

    .prologue
    .line 103
    const/16 v0, 0x19

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public static setLegacySoundAliveUser([I[I)V
    .locals 2
    .param p0, "eq"    # [I
    .param p1, "ext"    # [I

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "arg_user_eq"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 110
    const-string v1, "arg_user_ext"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 111
    const/16 v1, 0x1a

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    .line 112
    return-void
.end method
