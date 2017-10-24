.class public Lcom/samsung/android/speech/SemSpeechRecognizer;
.super Ljava/lang/Object;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    }
.end annotation


# static fields
.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SVOICE_LANGUAGE_FILE:Ljava/lang/String;

.field private audio:Lcom/samsung/android/speech/AudioTask;

.field private audio_thread:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private intBargeInResult:I

.field public isEnableBargeIn:Z

.field private isEnableChineseBargeIn:Z

.field private isEnableExtraRussian:Z

.field private isEnableExtraSpanish:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private mState:I

.field private mStopHandler:Landroid/os/Handler;

.field private samsungOOVResult:Z

.field private uselanguage:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/speech/SemSpeechRecognizer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/speech/SemSpeechRecognizer;ILandroid/os/Handler;)V
    .locals 0
    .param p1, "commandType"    # I
    .param p2, "stopHandler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->delayedStartBargeIn(ILandroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 33
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 45
    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 60
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 33
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 45
    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 60
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 65
    const-string/jumbo v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 83
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeInRecognizer get Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    .line 81
    return-void
.end method

.method private SendHandlerMessage(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 138
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 142
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "commandType"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 146
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 147
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 137
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private delayedStartBargeIn(ILandroid/os/Handler;)V
    .locals 6
    .param p1, "commandType"    # I
    .param p2, "stopHandler"    # Landroid/os/Handler;

    .prologue
    .line 232
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-short v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 231
    return-void

    .line 239
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Load PDTAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string/jumbo v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/speech/PDTAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0, p2}, Lcom/samsung/android/speech/AudioTask;->setHandler(Landroid/os/Handler;)V

    .line 254
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 258
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 246
    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Load SensoryAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/samsung/android/speech/SensoryAudioTask;

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string/jumbo v2, "/system/voicebargeindata"

    iget v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/speech/SensoryAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 248
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Complete Loading SensoryAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 264
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "make new SemSpeechRecognizer VER 16.11.30"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isChineseMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 91
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 94
    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 105
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableExtraSpanish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableExtraRussian : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 98
    :cond_0
    const-string/jumbo v0, "/system/voicebargeindata/include/bargein_language_extra_es"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 99
    const-string/jumbo v0, "/system/voicebargeindata/include/bargein_language_extra_ru"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    goto/16 :goto_0
.end method

.method private static isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 724
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const/4 v0, 0x1

    return v0

    .line 726
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isPDTModel()Z
    .locals 1

    .prologue
    .line 356
    const-string/jumbo v0, "/system/lib/libBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/system/lib64/libBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isSamsungModel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 347
    const-string/jumbo v0, "/system/lib/libsasr-jni.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    .line 347
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    .line 347
    if-eqz v0, :cond_0

    .line 350
    return v2

    .line 352
    :cond_0
    return v1
.end method

.method private static isSensoryModel()Z
    .locals 1

    .prologue
    .line 363
    const-string/jumbo v0, "/system/lib/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 366
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUseModel()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 327
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "use libBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v2

    .line 332
    :cond_0
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 334
    return v2

    .line 335
    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSensoryModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iput-boolean v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 337
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not find libsasr-jni.so use only libSensoryBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v2

    .line 341
    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error : Could not find libsasr-jni.so && libSensoryBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v3
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 615
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 617
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 619
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 621
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 623
    .local v0, "data":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 624
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 626
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 628
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v0, "data":[B
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 630
    .end local v0    # "data":[B
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    if-eqz v4, :cond_0

    .line 632
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 638
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 640
    return-object v7

    .line 633
    :catch_1
    move-exception v2

    .line 635
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 644
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :cond_1
    return-object v7

    .line 628
    .end local v0    # "data":[B
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private setLanguage()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-nez v4, :cond_1

    .line 489
    const-string/jumbo v0, "en_US"

    .line 490
    .local v0, "defaultLanguage":Ljava/lang/String;
    const-string/jumbo v3, "en"

    .line 491
    .local v3, "stringLanguage":Ljava/lang/String;
    const-string/jumbo v2, "US"

    .line 500
    .local v2, "stringCountry":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 502
    .local v1, "sVoiceLanguage":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stringLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stringCountry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sVoiceLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v3, :cond_0

    .line 535
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 483
    :cond_0
    :goto_1
    return-void

    .line 495
    .end local v0    # "defaultLanguage":Ljava/lang/String;
    .end local v1    # "sVoiceLanguage":Ljava/lang/String;
    .end local v2    # "stringCountry":Ljava/lang/String;
    .end local v3    # "stringLanguage":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .restart local v0    # "defaultLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 497
    .restart local v3    # "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "stringCountry":Ljava/lang/String;
    goto :goto_0

    .line 537
    .restart local v1    # "sVoiceLanguage":Ljava/lang/String;
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 538
    const-string/jumbo v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 539
    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 541
    :cond_3
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 543
    :cond_4
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v4, :cond_9

    .line 544
    const-string/jumbo v4, "CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 545
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 546
    :cond_5
    const-string/jumbo v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 547
    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 548
    :cond_6
    const-string/jumbo v4, "HK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 549
    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 550
    :cond_7
    const-string/jumbo v4, "SG"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 551
    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 553
    :cond_8
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_1

    .line 555
    :cond_9
    const-string/jumbo v4, "ES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 556
    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 557
    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    if-nez v4, :cond_a

    const-string/jumbo v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 560
    :cond_a
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Extra Sapnish is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :cond_b
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 563
    :cond_c
    const-string/jumbo v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 564
    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 565
    :cond_d
    sget-object v4, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 566
    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 567
    :cond_e
    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 568
    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 569
    :cond_f
    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 570
    const/4 v4, 0x6

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 571
    :cond_10
    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 572
    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 573
    :cond_11
    const-string/jumbo v4, "ru"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 574
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 575
    :cond_12
    const-string/jumbo v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 576
    const-string/jumbo v4, "BR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 577
    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 579
    :cond_13
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 581
    :cond_14
    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    if-eqz v4, :cond_17

    .line 582
    const-string/jumbo v4, "az_AZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "kk_KZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "uz_UZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 583
    const-string/jumbo v4, "ky_KZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 582
    if-nez v4, :cond_15

    .line 583
    const-string/jumbo v4, "tg_TJ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 582
    if-nez v4, :cond_15

    .line 583
    const-string/jumbo v4, "tk_TM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 582
    if-nez v4, :cond_15

    .line 584
    const-string/jumbo v4, "be_BY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 582
    if-eqz v4, :cond_16

    .line 585
    :cond_15
    iput v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 586
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Extra Russian is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 588
    :cond_16
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1

    .line 590
    :cond_17
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_1
.end method

.method private start(I)V
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    .line 157
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 162
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$1;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 171
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "StopHandler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$2;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 181
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->SendHandlerMessage(I)V

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method public getBargeInCmdLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    packed-switch v0, :pswitch_data_0

    .line 421
    const-string/jumbo v0, "en-US"

    return-object v0

    .line 393
    :pswitch_0
    const-string/jumbo v0, "ko-KR"

    return-object v0

    .line 395
    :pswitch_1
    const-string/jumbo v0, "en-US"

    return-object v0

    .line 397
    :pswitch_2
    const-string/jumbo v0, "zh-CN"

    return-object v0

    .line 399
    :pswitch_3
    const-string/jumbo v0, "es-ES"

    return-object v0

    .line 401
    :pswitch_4
    const-string/jumbo v0, "fr-FR"

    return-object v0

    .line 403
    :pswitch_5
    const-string/jumbo v0, "de-DE"

    return-object v0

    .line 405
    :pswitch_6
    const-string/jumbo v0, "it-IT"

    return-object v0

    .line 407
    :pswitch_7
    const-string/jumbo v0, "ja-JP"

    return-object v0

    .line 409
    :pswitch_8
    const-string/jumbo v0, "ru-RU"

    return-object v0

    .line 411
    :pswitch_9
    const-string/jumbo v0, "pt-BR"

    return-object v0

    .line 413
    :pswitch_a
    const-string/jumbo v0, "en-GB"

    return-object v0

    .line 415
    :pswitch_b
    const-string/jumbo v0, "v-es-LA"

    return-object v0

    .line 417
    :pswitch_c
    const-string/jumbo v0, "zh-TW"

    return-object v0

    .line 419
    :pswitch_d
    const-string/jumbo v0, "zh-HK"

    return-object v0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getCommandLanguage()I
    .locals 3

    .prologue
    .line 479
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    return v0
.end method

.method public getCommandStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "CommandType"    # I

    .prologue
    .line 436
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandStringArray(II)[Ljava/lang/String;
    .locals 3
    .param p1, "CommandType"    # I
    .param p2, "Language"    # I

    .prologue
    .line 441
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandStringArray : CommandType ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ) Language ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v0, 0xf

    if-lt p2, v0, :cond_0

    .line 444
    const/4 p2, 0x1

    .line 446
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    const/4 p2, 0x1

    .line 448
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCommandStringArray : possible language is ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 467
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 453
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 456
    :cond_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 458
    :pswitch_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 460
    :pswitch_3
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 462
    :pswitch_4
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 464
    :pswitch_5
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 451
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getRecognitionResult()I
    .locals 2

    .prologue
    .line 605
    monitor-enter p0

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 609
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return v0
.end method

.method public isChineseMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 377
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    return v1

    .line 381
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    return v1

    .line 384
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    const/4 v2, 0x1

    .line 667
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 669
    .local v0, "language":I
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 671
    :cond_0
    if-eq v0, v2, :cond_1

    .line 672
    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 673
    iget v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    return v1

    .line 676
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled(II)Z
    .locals 11
    .param p1, "commandType"    # I
    .param p2, "language"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 681
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 682
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "PDTModelPath":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetPDTGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "PDTGrammarPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v01.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v01.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 689
    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: PDTBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v9

    .line 693
    :cond_0
    return v10

    .line 695
    .end local v0    # "PDTGrammarPath":Ljava/lang/String;
    .end local v1    # "PDTModelPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSensoryModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 696
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v5

    .line 697
    .local v5, "sensoryModelPath":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "sensoryGrammarPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v2.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_v2.raw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-static {v5}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 703
    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: SensoryBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return v9

    .line 708
    .end local v4    # "sensoryGrammarPath":Ljava/lang/String;
    .end local v5    # "sensoryModelPath":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 709
    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "samsungModelPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "samsungNameList":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 713
    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: SamsungBargeIn is available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v9

    .line 718
    .end local v2    # "samsungModelPath":Ljava/lang/String;
    .end local v3    # "samsungNameList":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabled: BargeIn is not available in commandType ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") uselanguage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v10
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method

.method public setListener(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 116
    return-void
.end method

.method public startRecognition(I)V
    .locals 3
    .param p1, "commandType"    # I

    .prologue
    .line 199
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    .line 198
    return-void
.end method

.method public startRecognition(II)V
    .locals 3
    .param p1, "commandType"    # I
    .param p2, "setLang"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 226
    iput p2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    .line 220
    return-void
.end method

.method public stopRecognition()V
    .locals 4

    .prologue
    .line 277
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopRecognition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 285
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 290
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Stop Handler = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v1, v1, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 295
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v1}, Lcom/samsung/android/speech/AudioTask;->stop()V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 299
    :try_start_1
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait for audio to stop: end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 312
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 317
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio_thread = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 321
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mState change to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 276
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 279
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 306
    :cond_4
    :try_start_4
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "audio_thread was not working"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
