.class Lcom/samsung/android/speech/PDTAudioTask;
.super Lcom/samsung/android/speech/AudioTask;
.source "PDTAudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/PDTAudioTask$1;
    }
.end annotation


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0x140


# instance fields
.field private AUDIO_START:I

.field public CMscore:F

.field private final RECOGNITION_WAIT_TIME:I

.field private TAG:Ljava/lang/String;

.field public THscore:D

.field private aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public consoleInitReturn:J

.field public done:Z

.field private dualThresholdFlag:I

.field public f:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field private isMakePCM:Z

.field public isPDTBargeInEnable:Z

.field public isSensoryResult:Z

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mDataOutputStream:Ljava/io/DataOutputStream;

.field public mLanguage:I

.field public mStopHandler:Landroid/os/Handler;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field private recogAfterReadCount:I

.field private searchGrammarPathname:Ljava/lang/String;

.field public speech:[S

.field private totalReadCount:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/speech/PDTAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/speech/AudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 26
    const-class v0, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    .line 31
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 32
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    .line 36
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->numRecogResult:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->CMscore:F

    .line 39
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    .line 44
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    .line 46
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 47
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    .line 52
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 53
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 54
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->RECOGNITION_WAIT_TIME:I

    .line 57
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    .line 58
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    .line 60
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->THscore:D

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v4}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v01.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v4}, Lcom/samsung/android/speech/Config;->GetPDTGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v01.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    .line 66
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    .line 67
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 70
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isSensoryResult:Z

    .line 72
    iput-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 74
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    .line 351
    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/PDTAudioTask$1;-><init>(Lcom/samsung/android/speech/PDTAudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    .line 78
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0x140

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/speech/PDTAudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 76
    return-void
.end method

.method private SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 363
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 364
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stop()V

    goto :goto_0
.end method

.method private getPDTBargeInAct(ILjava/lang/String;)I
    .locals 3
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 406
    packed-switch p1, :pswitch_data_0

    .line 458
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 410
    :pswitch_0
    const-string/jumbo v0, "Answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    return v1

    .line 412
    :cond_1
    const-string/jumbo v0, "Reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return v2

    .line 421
    :pswitch_1
    const-string/jumbo v0, "Smile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    return v1

    .line 423
    :cond_2
    const-string/jumbo v0, "Cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    return v2

    .line 425
    :cond_3
    const-string/jumbo v0, "Capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    const/4 v0, 0x3

    return v0

    .line 427
    :cond_4
    const-string/jumbo v0, "Shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    const/4 v0, 0x4

    return v0

    .line 429
    :cond_5
    const-string/jumbo v0, "Record Video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "Record_Video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "RecordVideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    :cond_6
    const/4 v0, 0x5

    return v0

    .line 431
    :cond_7
    const-string/jumbo v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 432
    :cond_8
    const/4 v0, 0x6

    return v0

    .line 433
    :cond_9
    const-string/jumbo v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 434
    :cond_a
    const/4 v0, 0x7

    return v0

    .line 435
    :cond_b
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 436
    const/16 v0, 0x8

    return v0

    .line 437
    :cond_c
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 438
    :cond_d
    const/16 v0, 0x9

    return v0

    .line 439
    :cond_e
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 440
    :cond_f
    const/16 v0, 0xa

    return v0

    .line 441
    :cond_10
    const-string/jumbo v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 442
    :cond_11
    const/16 v0, 0xb

    return v0

    .line 443
    :cond_12
    const-string/jumbo v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 444
    :cond_13
    const/16 v0, 0xc

    return v0

    .line 445
    :cond_14
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 446
    :cond_15
    const/16 v0, 0xd

    return v0

    .line 447
    :cond_16
    const-string/jumbo v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/16 v0, 0xe

    return v0

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPDTRecognitionResult(J[S)Z
    .locals 11
    .param p1, "consoleInitReturn"    # J
    .param p3, "speech"    # [S

    .prologue
    .line 324
    const/4 v10, 0x0

    .line 325
    .local v10, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 326
    .local v8, "ResultValue":[F
    const/high16 v9, -0x40800000    # -1.0f

    .line 327
    .local v9, "CMscore":F
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    const-wide/16 v4, 0x140

    const-wide/16 v6, 0x3e80

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, "consoleResult":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 330
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-direct {p0, v1, v10}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTBargeInAct(ILjava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    aput-short v1, v0, v2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 332
    const/4 v0, 0x0

    aget v9, v8, v0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v3, 0x0

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    return v0

    .line 342
    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_1

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 344
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setPDTFilePath(II)V
    .locals 5
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v4, 0x1

    .line 377
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "PDTModelPath":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetPDTGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "PDTGrammarPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_v01.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_v01.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string/jumbo v2, "/system/lib/libBargeInEngine.so"

    invoke-virtual {p0, v2}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/system/lib64/libBargeInEngine.so"

    invoke-virtual {p0, v2}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    iput-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    .line 386
    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 387
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 391
    :cond_1
    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 392
    iput-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    .line 394
    iget-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v2, :cond_2

    .line 395
    iput-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    .line 376
    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 397
    iput-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    goto :goto_0
.end method


# virtual methods
.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 7
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .param p7, "samsungOOVResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[S>;I",
            "Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    const-class v1, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PDTAudioTask init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Language : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-boolean v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 90
    iput-object p1, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 91
    iput p2, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    .line 92
    iput p5, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    .line 93
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 95
    iput-object p3, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 96
    iput-object p4, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    .line 97
    iput p6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    .line 99
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v6, v1, v5

    .line 101
    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    .line 103
    iput v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    .line 106
    :cond_0
    invoke-direct {p0, p6, p5}, Lcom/samsung/android/speech/PDTAudioTask;->setPDTFilePath(II)V

    .line 108
    const/16 v1, 0x140

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    .line 110
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPDTBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 113
    iput v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 115
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sdcard/"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_6

    .line 127
    :cond_2
    iput v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 128
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_4

    .line 141
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v1, :cond_5

    .line 146
    invoke-static {}, Lcom/samsung/voicebargein/BargeInEngineWrapper;->getInstance()Lcom/samsung/voicebargein/BargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 148
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v1, :cond_7

    .line 149
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    .line 83
    :cond_5
    :goto_2
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v1, :cond_3

    .line 133
    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 134
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 135
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "BargeInEngineWrapper.getInstance() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isPDTBargeinEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    return v0
.end method

.method readShortBlock()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 245
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_0

    .line 246
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput v7, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 248
    return v7

    .line 251
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_2

    .line 255
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_3

    .line 256
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput v7, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 258
    return v7

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    iget-object v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    array-length v6, v6

    invoke-virtual {v4, v5, v8, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    goto :goto_0

    .line 261
    :cond_3
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    const/16 v5, 0x140

    if-ge v4, v5, :cond_4

    .line 262
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    rem-int/lit8 v4, v4, 0x14

    if-nez v4, :cond_5

    .line 266
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nshorts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dualThr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_5
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 271
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-eqz v4, :cond_6

    .line 272
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 275
    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_7

    .line 276
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section3"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput v7, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 278
    return v7

    .line 282
    :cond_7
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-lez v4, :cond_c

    .line 284
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_8

    .line 285
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section4"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput v7, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 287
    return v7

    .line 290
    :cond_8
    const/4 v2, 0x0

    .line 292
    .local v2, "result":I
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v4, :cond_a

    .line 293
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v4, :cond_9

    .line 294
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section5"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput v7, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 296
    return v7

    .line 299
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    iget v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    if-le v4, v5, :cond_a

    .line 300
    const/4 v3, 0x0

    .line 302
    .local v3, "successRecog":Z
    iget-wide v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    iget-object v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTRecognitionResult(J[S)Z

    move-result v3

    .line 306
    .end local v3    # "successRecog":Z
    :cond_a
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v4, :cond_b

    .line 307
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-static {v4}, Lcom/samsung/android/speech/AudioTask;->swap([S)V

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    array-length v4, v4

    if-ge v1, v4, :cond_b

    .line 310
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    aget-short v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v2    # "result":I
    :cond_b
    :goto_2
    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v4

    .line 317
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readNshorts is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " So do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PDTAudioTask run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call rec.startRecording start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call startRecording end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->readShortBlock()I

    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_5

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stopBargeInAudioRecord()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PDT phrasespotClose start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotClose(J)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PDT phrasespotClose end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    iput-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 231
    iput-object v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 232
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "aPDTBargeInEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "m_listener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_4
    return-void

    .line 210
    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Bargein fail to start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PDTAudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PDTAudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeInAudioRecord start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 171
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.stop start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.stop end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.release start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.release end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 189
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rec = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeInAudioRecord end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
