.class public final Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;
.super Ljava/lang/Object;
.source "LegacySoundAliveController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MEDIA_PLAYER_INTERFACE_NAME:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLegacySoundAlivePreset:I

.field private mLegacySoundAliveUserEq:[I

.field private mLegacySoundAliveUserExt:[I

.field private final mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

.field private final mSoundAliveChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$2;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mSoundAliveChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAlivePreset:I

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/PlayerSettingManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->addOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mSoundAliveChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.samsungsound.ACTION_SOUNDALIVE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->resetSoundAlivePreset()V

    return-void
.end method

.method private canChangeLegacySoundAlivePreset(IZ)Z
    .locals 5
    .param p1, "preset"    # I
    .param p2, "enableToast"    # Z

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPresetErrorMessage(Landroid/content/Context;I)I

    move-result v0

    .line 248
    .local v0, "message":I
    const-string v2, "LegacySA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canChangeLegacySoundAlivePreset() preset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enableToast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 252
    const/4 v1, 0x1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    if-eqz p2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private loadLagacySoundAliveUserExtension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "user_ext"

    const-string v2, "0|0|0|0|0|"

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadLegacySoundAlivePreset()I
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "sound_alive"

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadLegacySoundAliveUserEqualization()Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "user_eq"

    const-string v2, "0|0|0|0|0|0|0|"

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getPreferencesString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSoundAliveUserEQ()[I
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 196
    new-array v0, v6, [I

    .line 197
    .local v0, "eq":[I
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadLegacySoundAliveUserEqualization()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "savedEq":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v3, "strToken":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 201
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 200
    .end local v4    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v5, 0x0

    aput v5, v0, v1

    goto :goto_1

    .line 208
    :cond_1
    return-object v0
.end method

.method private loadSoundAliveUserExt()[I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 212
    new-array v0, v6, [I

    .line 213
    .local v0, "ext":[I
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadLagacySoundAliveUserExtension()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "savedExt":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v3, "strToken":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 217
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 216
    .end local v4    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v5, 0x0

    aput v5, v0, v1

    goto :goto_1

    .line 224
    :cond_1
    return-object v0
.end method

.method private resetSoundAlivePreset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(IZZ)V

    .line 156
    return-void
.end method

.method private saveLegacySoundAlivePreset(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "sound_alive"

    .line 269
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method private saveLegacySoundAliveUserEqualization(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "user_eq"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private saveLegacySoundAliveUserExtension(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayerSettingManager:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    const-string/jumbo v1, "user_ext"

    .line 289
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->savePreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private saveSoundAliveUserEqExt([I[I)V
    .locals 5
    .param p1, "eq"    # [I
    .param p2, "ext"    # [I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x5

    .line 228
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ne v2, v4, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 231
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->saveLegacySoundAliveUserEqualization(Ljava/lang/String;)V

    .line 236
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    array-length v2, p2

    if-ne v2, v3, :cond_3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 239
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->saveLegacySoundAliveUserExtension(Ljava/lang/String;)V

    .line 244
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private setLegacySoundAliveUserInternal([I[I)V
    .locals 2
    .param p1, "eq"    # [I
    .param p2, "ext"    # [I

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAliveUserEq:[I

    .line 187
    iput-object p2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAliveUserExt:[I

    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPreparing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 190
    .local v0, "player":Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAliveUserEqInternal(Landroid/media/MediaPlayer;[I)V

    .line 191
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAliveUserExtInternal(Landroid/media/MediaPlayer;[I)V

    .line 193
    .end local v0    # "player":Landroid/media/MediaPlayer;
    :cond_1
    return-void
.end method

.method private static setSoundAlivePresetByGenreInternal(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 1
    .param p0, "mp"    # Landroid/media/MediaPlayer;
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 373
    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 374
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->getAutoGenre(Ljava/lang/String;I)I

    move-result v0

    .line 373
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(Landroid/media/MediaPlayer;I)V

    .line 375
    return-void
.end method

.method private setSoundAlivePresetInternal(I)V
    .locals 4
    .param p1, "preset"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAlivePreset:I

    .line 169
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 171
    .local v1, "player":Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "android.media.metadata.GENRE"

    .line 172
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "genre":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 175
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetByGenreInternal(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 179
    :goto_0
    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    if-ne p1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAliveUserEq:[I

    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAliveUserExt:[I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setLegacySoundAliveUserInternal([I[I)V

    .line 183
    .end local v0    # "genre":Ljava/lang/String;
    .end local v1    # "player":Landroid/media/MediaPlayer;
    :cond_0
    return-void

    .line 177
    .restart local v0    # "genre":Ljava/lang/String;
    .restart local v1    # "player":Landroid/media/MediaPlayer;
    :cond_1
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(Landroid/media/MediaPlayer;I)V

    goto :goto_0
.end method

.method private static setSoundAlivePresetInternal(Landroid/media/MediaPlayer;I)V
    .locals 6
    .param p0, "mp"    # Landroid/media/MediaPlayer;
    .param p1, "preset"    # I

    .prologue
    .line 345
    if-gez p1, :cond_0

    .line 346
    const-string v3, "LegacySA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call saveLegacySoundAlivePreset() with soundEffect < 0 value, is something wrong in your codes? Because LegacySoundAlive can\'t handle \'-1\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v3, "LegacySA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLegacySoundAlivePreset() - preset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 354
    .local v2, "request":Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 357
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "LegacySA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLegacySoundAlivePreset(), we might invoke with error state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private static setSoundAliveUserEqInternal(Landroid/media/MediaPlayer;[I)V
    .locals 7
    .param p0, "mp"    # Landroid/media/MediaPlayer;
    .param p1, "eq"    # [I

    .prologue
    const/4 v5, 0x7

    .line 381
    if-nez p1, :cond_0

    .line 382
    new-array p1, v5, [I

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 384
    const/16 v4, 0xa

    aput v4, p1, v1

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_0
    array-length v4, p1

    if-ge v4, v5, :cond_1

    .line 388
    const-string v4, "LegacySA"

    const-string v5, "call setSoundAliveUserEqInternal(), eq length is under 7 please check your userEq value again"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_1
    return-void

    .line 395
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 396
    .local v3, "request":Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 399
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    sget v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v4, 0x4

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v4, 0x5

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v4, 0x6

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v4, "LegacySA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSoundAliveUserEqInternal(), we might invoke with error state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 423
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method private static setSoundAliveUserExtInternal(Landroid/media/MediaPlayer;[I)V
    .locals 7
    .param p0, "mp"    # Landroid/media/MediaPlayer;
    .param p1, "ext"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 296
    if-nez p1, :cond_0

    .line 297
    new-array p1, v5, [I

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 299
    aput v4, p1, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_0
    array-length v4, p1

    if-ge v4, v5, :cond_1

    .line 303
    const-string v4, "LegacySA"

    const-string v5, "call setSoundAliveUserExtInternal(), ext length is under 5 please check your userEq value again"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_1
    return-void

    .line 310
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 311
    .local v3, "request":Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 314
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    sget v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v4, 0x4

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v4, "LegacySA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSoundAliveUserExtInternal(), we might invoke with error state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 336
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method


# virtual methods
.method public getSoundAlivePreset()I
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAlivePreset:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAlive()V

    .line 151
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAlivePreset:I

    return v0
.end method

.method public loadSoundAlive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadLegacySoundAlivePreset()I

    move-result v0

    .line 160
    .local v0, "preset":I
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    if-ne v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAliveUserEQ()[I

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAliveUserExt()[I

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAliveUser([I[IZ)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v0, v3, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(IZZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mOnPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->removeOnOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mSoundAliveChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public setSoundAlivePresetInternal(IZZ)V
    .locals 3
    .param p1, "preset"    # I
    .param p2, "ignoreAuto"    # Z
    .param p3, "showToast"    # Z

    .prologue
    const/4 v2, 0x0

    .line 111
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadLegacySoundAlivePreset()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    sget v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    if-ne p1, v0, :cond_1

    .line 116
    invoke-virtual {p0, v2, v2, p3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAliveUser([I[IZ)V

    .line 123
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->saveLegacySoundAlivePreset(I)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->canChangeLegacySoundAlivePreset(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    sget p1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 121
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(I)V

    goto :goto_1
.end method

.method public setSoundAliveUser([I[IZ)V
    .locals 2
    .param p1, "eq"    # [I
    .param p2, "ext"    # [I
    .param p3, "showToast"    # Z

    .prologue
    .line 127
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->canChangeLegacySoundAlivePreset(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAliveUserEQ()[I

    move-result-object p1

    .line 131
    :cond_0
    if-nez p2, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAliveUserExt()[I

    move-result-object p2

    .line 134
    :cond_1
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    iput v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mLegacySoundAlivePreset:I

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;->getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 137
    .local v0, "player":Landroid/media/MediaPlayer;
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->USER:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(Landroid/media/MediaPlayer;I)V

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setLegacySoundAliveUserInternal([I[I)V

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->saveSoundAliveUserEqExt([I[I)V

    .line 144
    .end local v0    # "player":Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 141
    :cond_2
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->setSoundAlivePresetInternal(I)V

    .line 142
    sget v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->saveLegacySoundAlivePreset(I)V

    goto :goto_0
.end method
