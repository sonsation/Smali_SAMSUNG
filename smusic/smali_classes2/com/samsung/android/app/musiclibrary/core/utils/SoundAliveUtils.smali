.class public final Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;
.super Ljava/lang/Object;
.source "SoundAliveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;
    }
.end annotation


# static fields
.field private static final ACTION_MUSIC_LAUNCHED:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.MUSIC_LAUNCHED"

.field private static final AUTO_GENRES_SET:[I

.field private static final LOGGING_EXTRA_SOUNDALIVE_FROM_MUSIC:Ljava/lang/String; = "where"

.field private static final SAFX_EXTRA_AUTO:Ljava/lang/String; = "com.sec.android.app.Auto"

.field public static final SAFX_EXTRA_GENRE_INFO:Ljava/lang/String; = "genreINFO"

.field public static final SAFX_EXTRA_PRESET_INFO:Ljava/lang/String; = "presetINFO"

.field public static final SAFX_GENRE_INFO:Ljava/lang/String; = "com.sec.android.app.SA_GENRE_INFO"

.field private static final SAFX_GENTRE_NONE:I = 0xc

.field public static final SAFX_REQUEST_GENRE:Ljava/lang/String; = "com.sec.android.app.safx.ACTION_REQUEST_GENRE"

.field private static final SEC_GENRES_SET:[Ljava/lang/String;

.field public static final SOUNDALIVE_GENRE_INDEX:Ljava/lang/String; = "SOUNDALIVE_GENRE_INDEX"

.field private static final SOUNDALIVE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.soundalive"

.field private static final SOUNDALIVE_V4:Ljava/lang/String; = "40"

.field private static final SOUND_EFFECTS_CLASS_NAME:Ljava/lang/String; = "com.android.settings.Settings$SoundEffectSettingsActivity"

.field private static final SOUND_EFFECTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final sAutoGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    .line 53
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Alternative/Indie"

    aput-object v1, v0, v3

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const-string v1, "Children\'s"

    aput-object v1, v0, v5

    const-string v1, "Classical"

    aput-object v1, v0, v6

    const-string v1, "Comedy/Spoken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Holiday"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Rap / Hip-hop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x1c

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v1, v0, v5

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    aput v1, v0, v6

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->AUTO_GENRES_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoGenre(Ljava/lang/String;I)I
    .locals 5
    .param p0, "genre"    # Ljava/lang/String;
    .param p1, "defaultGenre"    # I

    .prologue
    .line 98
    move v1, p1

    .line 99
    .local v1, "soundAlive":I
    if-nez p0, :cond_0

    move v2, v1

    .line 118
    .end local v1    # "soundAlive":I
    .local v2, "soundAlive":I
    :goto_0
    return v2

    .line 102
    .end local v2    # "soundAlive":I
    .restart local v1    # "soundAlive":I
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->initAutoGenreMap()V

    .line 109
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 110
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "key":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    move v2, v1

    .line 118
    .end local v1    # "soundAlive":I
    .restart local v2    # "soundAlive":I
    goto :goto_0

    .line 112
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "soundAlive":I
    .restart local v1    # "soundAlive":I
    :cond_3
    move-object v0, p0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1
.end method

.method private static initAutoGenreMap()V
    .locals 5

    .prologue
    .line 91
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    array-length v0, v2

    .line 92
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->AUTO_GENRES_SET:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public static isSoundAliveV4()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "40"

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->AUDIO_CONFIG_SOUNDALIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchSoundAlive(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "audioSessionId"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchSoundAlive(Landroid/app/Activity;ZI)V

    .line 123
    return-void
.end method

.method public static launchSoundAlive(Landroid/app/Activity;ZI)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "fromPlayer"    # Z
    .param p2, "audioSessionId"    # I

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    if-eqz p1, :cond_0

    const-string v2, "Player"

    .line 133
    .local v2, "loggingExtra":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "where"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    return-void

    .line 131
    .end local v2    # "loggingExtra":Ljava/lang/String;
    :cond_0
    const-string v2, "Library"

    goto :goto_0

    .line 136
    .restart local v2    # "loggingExtra":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Ui"

    const-string v4, "SoundAlive Activity Not Found!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static launchSoundEffects(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchSoundEffects(Landroid/app/Activity;Z)V

    .line 146
    return-void
.end method

.method public static launchSoundEffects(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "fromPlayer"    # Z

    .prologue
    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SoundEffectSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    if-eqz p1, :cond_0

    const-string v2, "Player"

    .line 156
    .local v2, "loggingExtra":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "where"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    return-void

    .line 154
    .end local v2    # "loggingExtra":Ljava/lang/String;
    :cond_0
    const-string v2, "Library"

    goto :goto_0

    .line 159
    .restart local v2    # "loggingExtra":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Ui"

    const-string v4, "Sound effects Activity Not Found!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static notifyAudioEffectWithSession(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z
    .param p2, "sessionId"    # I
    .param p3, "genre"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 184
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v2, "com.sec.android.app.Auto"

    const/16 v3, 0xc

    invoke-static {p3, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->getAutoGenre(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 182
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    goto :goto_0
.end method

.method public static notifyMusicLaunched(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.music.intent.action.MUSIC_LAUNCHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "com.sec.android.app.soundalive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
