.class public final Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;
.super Ljava/lang/Object;
.source "PlayerSALoggingUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static getEdgePlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "521"

    .line 137
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6215"

    .line 138
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6214"

    .line 139
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6215"

    .line 140
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 141
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getFullPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 61
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "301"

    .line 62
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4025"

    .line 63
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4023"

    .line 64
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4024"

    .line 65
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4021"

    .line 66
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setSeek(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4002"

    .line 67
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setQueue(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4022"

    .line 68
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setShuffle(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4026"

    .line 69
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setRepeat(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "4003"

    .line 70
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setFavorite(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 71
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getFullPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    const-string v1, "302"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "301"

    const-string v2, "4001"

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setTriggerId(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    const-string v1, "4051"

    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setJumpId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    const-string v1, "4331"

    .line 180
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setMagnificationId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    const-string v1, "4332"

    .line 181
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setCloseId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->build()Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPlayerVolumeLogger()Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;

    const-string v1, "301"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getHookKeyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 151
    new-instance v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;-><init>()V

    const-string v2, "0021"

    .line 152
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->setPlay(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    move-result-object v0

    .line 153
    .local v0, "builder":Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getLockPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 75
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "520"

    .line 76
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6178"

    .line 77
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6176"

    .line 78
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6177"

    .line 79
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6175"

    .line 80
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setShuffle(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6174"

    .line 81
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setQueue(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6179"

    .line 82
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setRepeat(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6181"

    .line 83
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setFavorite(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 84
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getLockPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    const-string v1, "524"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "520"

    const-string v2, "6182"

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setTriggerId(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    const-string v1, "6183"

    .line 188
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setJumpId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->build()Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;

    move-result-object v0

    return-object v0
.end method

.method private static getMediaButtonLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 145
    new-instance v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;-><init>()V

    const-string v2, "0022"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->setPlay(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getMiniPlayerAdLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 97
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "0016"

    .line 98
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "0014"

    .line 99
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "8101"

    .line 100
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "8102"

    .line 101
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setClose(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 102
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getMiniPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "0016"

    .line 89
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "0014"

    .line 90
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "0015"

    .line 91
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "0072"

    .line 92
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setClose(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 93
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method private static getNotificationPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 126
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, ""

    .line 127
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6194"

    .line 128
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6192"

    .line 129
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6193"

    .line 130
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6195"

    .line 131
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setClose(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 132
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getRadioDialPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 157
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "901"

    .line 158
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "9006"

    .line 159
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "9004"

    .line 160
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "9005"

    .line 161
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static getRadioPlayerLyricsLogger()Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    const-string v1, "903"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "9032"

    .line 193
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setMagnificationId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    const-string v1, "9031"

    .line 194
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->setCloseId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->build()Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getRemotePlayerLoggers()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 167
    .local v0, "playerLoggers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;>;"
    const/16 v1, 0x65

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getNotificationPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    const/16 v1, 0x66

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getWidgetPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    const/16 v1, 0x67

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getEdgePlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    const/16 v1, 0x6b

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getHookKeyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    const/16 v1, 0x6c

    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getMediaButtonLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method public static getScreenOffPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "518"

    .line 107
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6154"

    .line 108
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6152"

    .line 109
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6153"

    .line 110
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 111
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method private static getWidgetPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    .prologue
    .line 115
    new-instance v1, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;-><init>()V

    const-string v2, "517"

    .line 116
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6135"

    .line 117
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6133"

    .line 118
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6134"

    .line 119
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6132"

    .line 120
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setShuffle(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v1

    const-string v2, "6136"

    .line 121
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->setRepeat(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    move-result-object v0

    .line 122
    .local v0, "builder":Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    return-object v1
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;J)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;Ljava/lang/String;J)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static sendScreenId(Ljava/lang/String;)V
    .locals 1
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static sendScreenOffCloseEvent()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "518"

    const-string v1, "6151"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static sendSetAsCancelEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    const-string v0, "4191"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static sendSetAsDoneEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    const-string v0, "4192"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static sendSetAsRecommendTypeEvent(Ljava/lang/String;I)V
    .locals 2
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "recommendType"    # I
        .annotation build Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$RecommendType$Def;
        .end annotation
    .end param

    .prologue
    .line 220
    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Recommend;->MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    const-string v1, "4193"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public static sendSetAsRingToneTypeEvent(Ljava/lang/String;I)V
    .locals 2
    .param p0, "screenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "ringtoneType"    # I
        .annotation build Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$RingtoneType$Def;
        .end annotation
    .end param

    .prologue
    .line 212
    sget-object v1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SetAs$Ringtone;->MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 214
    const-string v1, "4194"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method
