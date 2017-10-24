.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# static fields
.field public static final ADJUST_MEDIA_ONLY:Ljava/lang/String; = "adjust_media_volume_only"

.field public static final ALL_SOUND_MUTE:Ljava/lang/String; = "all_sound_mute"

.field public static final ENABLE_FLOATING_BUTTON:Ljava/lang/String; = "enable_floating_button"

.field public static final GET_APP_VOLUME_LIST:Ljava/lang/String; = "get_app_volume_list"

.field public static final MODE_ADJUST_MEDIA_VOLUME_ONLY:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MONO_SOUND:Ljava/lang/String; = "mono_sound"

.field public static final PARAMETER_PREFIX:Ljava/lang/String; = "sound_assistant"

.field public static final REMOVE_APP_VOLUME:Ljava/lang/String; = "remove_app_volume"

.field public static final SET_APP_DEVICE:Ljava/lang/String; = "set_app_device"

.field public static final SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field private static final TAG:Ljava/lang/String; = "SemSoundAssistant"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    return-void
.end method


# virtual methods
.method public getApplicationUidListUsingAudio()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 99
    iget-object v5, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v6, "use_audio_uids"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "strUids":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 101
    :cond_0
    return-object v7

    .line 103
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ";"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v3, "token":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "strUid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "strUid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 115
    return-object v7

    .line 117
    :cond_4
    return-object v4
.end method

.method public getApplicationVolume(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public getAudioFrameworkVersion()I
    .locals 4

    .prologue
    .line 145
    const-string/jumbo v3, "version"

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, "version":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "newParam":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "newParam":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVolumeKeyMode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 84
    const-string/jumbo v4, "adjust_media_volume_only"

    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 87
    .local v1, "mode":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    if-ne v1, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public setAppSoundOutputOnDevice(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set_app_device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setApplicationVolume(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    .line 126
    return-void
.end method

.method public setMonoSound(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mono_sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 163
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSoundAssistantParam(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "newParam":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setSoundAssistantProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "newParam":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setSoundBalance(I)V
    .locals 2
    .param p1, "ratio"    # I

    .prologue
    .line 171
    if-gez p1, :cond_1

    .line 172
    const/4 p1, 0x0

    .line 176
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 174
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setVolumeKeyMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 67
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 68
    const-string/jumbo v1, "SemSoundAssistant"

    const-string/jumbo v2, "Invalide mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjust_media_volume_only="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 66
    return-void
.end method
