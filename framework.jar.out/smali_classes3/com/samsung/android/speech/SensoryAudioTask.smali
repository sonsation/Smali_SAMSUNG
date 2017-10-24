.class Lcom/samsung/android/speech/SensoryAudioTask;
.super Lcom/samsung/android/speech/AudioTask;
.source "SensoryAudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/SensoryAudioTask$1;
    }
.end annotation


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0


# instance fields
.field private AUDIO_START:I

.field private final RECOGNITION_WAIT_TIME:I

.field private TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public consoleInitReturn:J

.field public consoleInitReturn_sub:J

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field private dualThresholdFlag:I

.field public f:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field public isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field public isSASRInitProblem:Z

.field public isSensoryBargeInEnable:Z

.field public isSensoryCameraBargeIn:Z

.field public isSensoryResult:Z

.field public isSubModelBargeInEnable:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mDataOutputStream:Ljava/io/DataOutputStream;

.field public mEmbeddedEngineLanguage:I

.field public mLanguage:I

.field public mStopHandler:Landroid/os/Handler;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field public modelPath:Ljava/lang/String;

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

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public sensoryCMscore:F

.field public sensoryChineseCaptureCMTH:F

.field public sensoryChineseStopCMTH:F

.field public sensoryJapaneseShootCMTH:F

.field public sensoryKoreanCancelCMTH:F

.field public sensoryKoreanRejectCMTH:F

.field public sensoryKoreanShootCMTH:F

.field public sensoryKoreanStopCMTH:F

.field public sensoryRussianCheeseCMTH:F

.field public sensoryUKEnglishStopCMTH:F

.field public sensoryUSEnglishCaptureCMTH:F

.field public sensoryUSEnglishCheeseCMTH:F

.field public sensoryUSEnglishRecordVideoCMTH:F

.field public sensoryUSEnglishShootCMTH:F

.field public sensoryUSEnglishSnoozeCMTH:F

.field public sensoryUSEnglishStopCMTH:F

.field public speech:[S

.field private totalReadCount:I

.field public wordListPath:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/speech/SensoryAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

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
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x43c80000    # 400.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/speech/AudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 26
    const-class v0, Lcom/samsung/android/speech/SensoryAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->block_size:I

    .line 31
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    .line 32
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 33
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn:J

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    .line 38
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->numRecogResult:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryCMscore:F

    .line 41
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    .line 46
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isMakePCM:Z

    .line 48
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 49
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadPath:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    .line 51
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 54
    iput v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    .line 55
    iput v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->modelPath:Ljava/lang/String;

    .line 58
    invoke-static {v5}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->wordListPath:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    .line 61
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->AUDIO_START:I

    .line 62
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->RECOGNITION_WAIT_TIME:I

    .line 65
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->f:Ljava/io/File;

    .line 66
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    .line 68
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v6}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_v2_2.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    .line 77
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCameraBargeIn:Z

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCancelBargeIn:Z

    .line 80
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    .line 86
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanRejectCMTH:F

    .line 87
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanCancelCMTH:F

    .line 88
    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanShootCMTH:F

    .line 89
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanStopCMTH:F

    .line 91
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryChineseCaptureCMTH:F

    .line 92
    const/high16 v0, 0x43020000    # 130.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryChineseStopCMTH:F

    .line 94
    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryJapaneseShootCMTH:F

    .line 96
    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishStopCMTH:F

    .line 97
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishSnoozeCMTH:F

    .line 99
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryRussianCheeseCMTH:F

    .line 102
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishShootCMTH:F

    .line 103
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    .line 104
    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishCheeseCMTH:F

    .line 105
    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishCaptureCMTH:F

    .line 107
    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUKEnglishStopCMTH:F

    .line 109
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRLoadModel:I

    .line 110
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRInit:I

    .line 111
    iput-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    .line 112
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 114
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    .line 763
    new-instance v0, Lcom/samsung/android/speech/SensoryAudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/SensoryAudioTask$1;-><init>(Lcom/samsung/android/speech/SensoryAudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->handler:Landroid/os/Handler;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "super()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/speech/SensoryAudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 116
    return-void
.end method

.method private SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 775
    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 776
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "recognition_result"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 778
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 781
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/speech/SensoryAudioTask;->stop()V

    goto :goto_0
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 11
    .param p1, "speech"    # [S
    .param p2, "readNshorts"    # I

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 654
    const/4 v6, 0x0

    .line 656
    .local v6, "result":I
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v6

    .line 660
    :cond_0
    const/4 v0, -0x2

    if-ne v6, v0, :cond_2

    .line 661
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 p2, -0x1

    .line 664
    return p2

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Barge-in : Too long input so Reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 670
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 674
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 p2, -0x1

    .line 677
    return p2

    .line 680
    :cond_3
    if-ne v6, v9, :cond_e

    .line 681
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_e

    .line 682
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v0, :cond_4

    .line 683
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 p2, -0x1

    .line 685
    return p2

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 690
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v3, "/system/voicebargeindata/sasr/input.txt"

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->numRecogResult:I

    .line 692
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 694
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    if-ne v0, v9, :cond_6

    .line 695
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 696
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    .line 699
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "strResult[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BargeinAct[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v0, v0, v7

    if-ne v0, v9, :cond_7

    .line 704
    const-wide v0, -0x4003333333333333L    # -1.8

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "THscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v0, :cond_9

    .line 714
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 p2, -0x1

    .line 716
    return v8

    .line 705
    :cond_7
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 706
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    goto :goto_0

    .line 708
    :cond_8
    const-wide/high16 v0, -0x4008000000000000L    # -1.5

    iput-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    goto :goto_0

    .line 719
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_b

    .line 720
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    if-eqz v0, :cond_a

    .line 721
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and isSensoryResult is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EmbeddedEngine Recognizer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iput-boolean v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    .line 724
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set isSensoryResult = false. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v0, :cond_d

    .line 744
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readByteBlock return -1 : Section13"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 p2, -0x1

    .line 746
    return p2

    .line 726
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSensoryCameraBargeIn is true and keyword is not detected by sensory and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    .line 729
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    .line 730
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/SensoryAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 734
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v0, v0, v7

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->THscore:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 735
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/SensoryAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 737
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string/jumbo v1, "TH-Reject"

    aput-object v1, v0, v7

    .line 738
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v8, v0, v7

    .line 739
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/SensoryAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 752
    :cond_e
    return p2
.end method

.method private getSensoryRecognitionResult(J[S)Z
    .locals 13
    .param p1, "consoleInitReturn"    # J
    .param p3, "speech"    # [S

    .prologue
    .line 475
    const/4 v9, 0x0

    .line 476
    .local v9, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 477
    .local v8, "sensoryResultValue":[F
    const/high16 v11, -0x40800000    # -1.0f

    .line 478
    .local v11, "sensoryCMscore":F
    const/4 v10, 0x0

    .line 479
    .local v10, "rejectFlag":Z
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 480
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    const-wide/16 v4, 0xa0

    const-wide/16 v6, 0x3e80

    move-wide v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, "consoleResult":Ljava/lang/String;
    const/4 v0, 0x1

    aget v0, v8, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    .line 486
    if-eqz v9, :cond_3

    .line 487
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    invoke-virtual {p0, v1, v9}, Lcom/samsung/android/speech/SensoryAudioTask;->getSensoryBargeInAct(ILjava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    aput-short v1, v0, v2

    .line 488
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 489
    const/4 v0, 0x0

    aget v11, v8, v0

    .line 491
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consoleResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 493
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 494
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensoryCMscore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dualThresholdFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-direct {p0, p1, p2, v0, v11}, Lcom/samsung/android/speech/SensoryAudioTask;->resultSensoryOOV(JIF)Z

    move-result v10

    .line 499
    .local v10, "rejectFlag":Z
    if-nez v10, :cond_3

    .line 500
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/SensoryAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    return v0

    .line 482
    .local v9, "consoleResult":Ljava/lang/String;
    .local v10, "rejectFlag":Z
    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, v8, v1

    goto/16 :goto_0

    .line 503
    .local v9, "consoleResult":Ljava/lang/String;
    .local v10, "rejectFlag":Z
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    if-nez v0, :cond_3

    .line 504
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/speech/SensoryAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_2

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    .line 509
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set isSensoryResult = true. So isSensoryResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 515
    .end local v10    # "rejectFlag":Z
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private resultSensoryOOV(JIF)Z
    .locals 7
    .param p1, "consoleInitReturn"    # J
    .param p3, "action"    # I
    .param p4, "sensoryCMscore"    # F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 520
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    if-ne v0, v3, :cond_1

    .line 521
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 523
    :pswitch_0
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanRejectCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean reject score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v2

    .line 532
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 533
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    if-ne v0, v2, :cond_5

    .line 535
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 537
    :pswitch_1
    if-ne p3, v4, :cond_2

    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v2

    .line 540
    :cond_2
    if-ne p3, v3, :cond_3

    const/high16 v0, 0x44960000    # 1200.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v2

    .line 543
    :cond_3
    if-ne p3, v5, :cond_4

    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v2

    .line 546
    :cond_4
    if-ne p3, v6, :cond_0

    const/high16 v0, 0x44480000    # 800.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return v2

    .line 557
    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_2

    :pswitch_2
    goto :goto_0

    .line 566
    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 567
    if-ne p3, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 568
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return v2

    .line 570
    :cond_6
    if-ne p3, v4, :cond_7

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_7

    .line 571
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return v2

    .line 573
    :cond_7
    if-ne p3, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    .line 574
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v2

    .line 576
    :cond_8
    if-ne p3, v6, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishRecordVideoCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Sub English record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v2

    .line 583
    :pswitch_4
    if-ne p3, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryChineseCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return v2

    .line 589
    :pswitch_5
    if-ne p3, v5, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryJapaneseShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v2

    .line 595
    :pswitch_6
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryRussianCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Russian cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v2

    .line 605
    :cond_9
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    if-ne v0, v4, :cond_b

    .line 606
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 608
    :sswitch_0
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v2

    .line 614
    :sswitch_1
    if-ne p3, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_a

    .line 615
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v2

    .line 617
    :cond_a
    if-ne p3, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUSEnglishSnoozeCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v2

    .line 623
    :sswitch_2
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryChineseStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v2

    .line 629
    :sswitch_3
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryUKEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return v2

    .line 637
    :cond_b
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 638
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 640
    :pswitch_7
    if-ne p3, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->sensoryKoreanCancelCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Korean cancel score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v2

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 557
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch

    .line 638
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public static twoBytesToShort(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .prologue
    .line 756
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getSensoryBargeInAct(ILjava/lang/String;)I
    .locals 6
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 835
    packed-switch p1, :pswitch_data_0

    .line 943
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 837
    :pswitch_0
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    return v1

    .line 842
    :pswitch_1
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    return v1

    .line 844
    :cond_1
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    return v2

    .line 849
    :pswitch_2
    const-string/jumbo v0, "answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    return v1

    .line 851
    :cond_2
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    return v2

    .line 856
    :pswitch_3
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    return v1

    .line 858
    :cond_3
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    return v2

    .line 865
    :pswitch_4
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 866
    return v1

    .line 867
    :cond_4
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    return v2

    .line 869
    :cond_5
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 870
    return v3

    .line 871
    :cond_6
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 872
    return v4

    .line 873
    :cond_7
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 874
    :cond_8
    return v5

    .line 875
    :cond_9
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    :cond_a
    const/4 v0, 0x6

    return v0

    .line 880
    :pswitch_5
    const-string/jumbo v0, "smile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 881
    return v1

    .line 882
    :cond_b
    const-string/jumbo v0, "cheese"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 883
    return v2

    .line 884
    :cond_c
    const-string/jumbo v0, "capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 885
    return v3

    .line 886
    :cond_d
    const-string/jumbo v0, "shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 887
    return v4

    .line 888
    :cond_e
    const-string/jumbo v0, "record video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "record_video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "recordvideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 889
    :cond_f
    return v5

    .line 890
    :cond_10
    const-string/jumbo v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 891
    :cond_11
    const/4 v0, 0x6

    return v0

    .line 892
    :cond_12
    const-string/jumbo v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 893
    :cond_13
    const/4 v0, 0x7

    return v0

    .line 894
    :cond_14
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 895
    const/16 v0, 0x8

    return v0

    .line 896
    :cond_15
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 897
    :cond_16
    const/16 v0, 0x9

    return v0

    .line 898
    :cond_17
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 899
    :cond_18
    const/16 v0, 0xa

    return v0

    .line 900
    :cond_19
    const-string/jumbo v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 901
    :cond_1a
    const/16 v0, 0xb

    return v0

    .line 902
    :cond_1b
    const-string/jumbo v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 903
    :cond_1c
    const/16 v0, 0xc

    return v0

    .line 904
    :cond_1d
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 905
    :cond_1e
    const/16 v0, 0xd

    return v0

    .line 906
    :cond_1f
    const-string/jumbo v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    const/16 v0, 0xe

    return v0

    .line 911
    :pswitch_6
    const-string/jumbo v0, "buddy photo share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "buddy_photo_share"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "buddyphotoshare"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 912
    :cond_20
    return v1

    .line 913
    :cond_21
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 914
    return v2

    .line 915
    :cond_22
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 916
    return v3

    .line 917
    :cond_23
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 918
    return v4

    .line 919
    :cond_24
    const-string/jumbo v0, "slideshow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 920
    return v5

    .line 921
    :cond_25
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 922
    const/4 v0, 0x6

    return v0

    .line 923
    :cond_26
    const-string/jumbo v0, "camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x7

    return v0

    .line 928
    :pswitch_7
    const-string/jumbo v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    return v1

    .line 933
    :pswitch_8
    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 934
    return v1

    .line 935
    :cond_27
    const-string/jumbo v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    return v2

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 8
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
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 125
    const-class v1, Lcom/samsung/android/speech/SensoryAudioTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SensoryAudioTask init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 128
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 130
    iput-boolean v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    .line 131
    iput-object p1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 132
    iput p2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->block_size:I

    .line 133
    iput p5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    .line 134
    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 136
    iput-object p3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 137
    iput-object p4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadPath:Ljava/lang/String;

    .line 138
    iput p6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    .line 140
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v7, v1, v5

    .line 142
    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    .line 144
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    .line 147
    :cond_0
    invoke-virtual {p0, p6, p5}, Lcom/samsung/android/speech/SensoryAudioTask;->setSensoryFilePath(II)V

    .line 148
    iput-boolean p7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    .line 150
    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    .line 152
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSensoryBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    .line 156
    iput v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    .line 158
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sdcard/"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->f:Ljava/io/File;

    .line 162
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->f:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_8

    .line 170
    :cond_2
    iput v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->AUDIO_START:I

    .line 171
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 172
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 183
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v1, :cond_4

    .line 184
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    .line 188
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_5

    .line 189
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 191
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_9

    .line 193
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn:J

    .line 194
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    .line 201
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    if-nez v1, :cond_a

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_a

    .line 246
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRLoadModel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultSASRInit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSASRInitProblem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "e1":Ljava/io/FileNotFoundException;
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v1, :cond_3

    .line 176
    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->AUDIO_START:I

    .line 177
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_SENSORY:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

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

    goto/16 :goto_1

    .line 199
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SensoryBargeInEngineWrapper.getInstance() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 202
    :cond_a
    invoke-static {}, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->getInstance()Lcom/samsung/android/speech/MMUIRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 204
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_b

    .line 205
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SetSRLanguage(I)I

    .line 208
    :cond_b
    iget v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v1, p5}, Lcom/samsung/android/speech/SensoryAudioTask;->setSamsungFilePath(II)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_c

    .line 212
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRLoadModel:I

    .line 214
    iget v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRLoadModel:I

    if-nez v1, :cond_c

    .line 215
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    .line 218
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load Model result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRLoadModel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 221
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wordlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Load Wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_e

    .line 230
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_d

    .line 231
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRInit:I

    .line 234
    :cond_d
    iget v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRInit:I

    if-nez v1, :cond_e

    .line 235
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    .line 238
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load Wordlist result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->resultSASRInit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_7

    .line 241
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_7

    .line 242
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    goto/16 :goto_3

    .line 223
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wordlist is not exist. So set default wordlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    goto :goto_4
.end method

.method public isSensoryBargeinEnabled()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    return v0
.end method

.method readShortBlock()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 359
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    if-eqz v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 362
    return v7

    .line 365
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 368
    return v7

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_3

    .line 375
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_4

    .line 376
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 378
    return v7

    .line 372
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    iget-object v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    array-length v6, v6

    invoke-virtual {v4, v5, v8, v6}, Landroid/media/AudioRecord;->read([SII)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    goto :goto_0

    .line 381
    :cond_4
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    const/16 v5, 0xa0

    if-ge v4, v5, :cond_5

    .line 382
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    rem-int/lit8 v4, v4, 0x14

    if-nez v4, :cond_6

    .line 386
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nshorts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dualThr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->dualThresholdFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_6
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    .line 391
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    if-eqz v4, :cond_7

    .line 392
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->recogAfterReadCount:I

    .line 406
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_8

    .line 407
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section3"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 409
    return v7

    .line 413
    :cond_8
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    if-lez v4, :cond_11

    .line 415
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_9

    .line 416
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section4"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 418
    return v7

    .line 421
    :cond_9
    const/4 v2, 0x0

    .line 422
    .local v2, "result":I
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_b

    .line 423
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_a

    .line 424
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section5"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 426
    return v7

    .line 429
    :cond_a
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    iget v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->AUDIO_START:I

    if-le v4, v5, :cond_b

    .line 430
    const/4 v3, 0x0

    .line 432
    .local v3, "successRecog":Z
    iget-wide v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn:J

    iget-object v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/speech/SensoryAudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v3

    .line 434
    .local v3, "successRecog":Z
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v4, :cond_b

    .line 435
    iget-wide v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    iget-object v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/speech/SensoryAudioTask;->getSensoryRecognitionResult(J[S)Z

    move-result v3

    .line 437
    if-eqz v3, :cond_b

    .line 438
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "It is Recognized by sub Model"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v3    # "successRecog":Z
    :cond_b
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->totalReadCount:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_d

    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    if-nez v4, :cond_e

    :cond_c
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_e

    .line 457
    :cond_d
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isMakePCM:Z

    if-eqz v4, :cond_10

    .line 458
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    invoke-static {v4}, Lcom/samsung/android/speech/AudioTask;->swap([S)V

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    array-length v4, v4

    if-ge v1, v4, :cond_10

    .line 461
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    aget-short v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "i":I
    :cond_e
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v4, :cond_f

    .line 445
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readByteBlock return -1 : Section6"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iput v7, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 447
    return v7

    .line 450
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v4, :cond_d

    .line 451
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->speech:[S

    iget v5, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/speech/SensoryAudioTask;->getMMUIRecognitionResult([SI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 452
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    if-ne v4, v7, :cond_d

    .line 453
    return v7

    .line 462
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 471
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v2    # "result":I
    :cond_10
    :goto_2
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    return v4

    .line 468
    :cond_11
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readNshorts is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

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
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 292
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SensoryAudioTask run()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_9

    .line 296
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.startRecording start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call startRecording end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/speech/SensoryAudioTask;->readShortBlock()I

    .line 304
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-eqz v1, :cond_8

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/speech/SensoryAudioTask;->stopBargeInAudioRecord()V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSASRInitProblem:Z

    if-nez v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRClose()I

    move-result v0

    .line 322
    .local v0, "SASRCloseReturn":I
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0    # "SASRCloseReturn":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SASRClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-eqz v1, :cond_6

    .line 328
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 333
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 334
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    iget-wide v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->phrasespotClose(J)V

    .line 337
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "phrasespotClose end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_6
    iput-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 341
    iput-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->aSensoryBargeInEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 342
    iput-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 344
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aMMUIRecognizer = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "aSensoryBargeInEngine = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "m_listener = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SensoryAudioTask run end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    if-nez v1, :cond_7

    .line 351
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 352
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    :cond_7
    return-void

    .line 308
    :cond_8
    iget v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    .line 313
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Bargein fail to start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 947
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    .line 949
    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_1

    .line 950
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    .line 965
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void

    .line 951
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 952
    iput v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 953
    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 954
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 955
    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 956
    iput v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 957
    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 958
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 959
    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 960
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 961
    :cond_6
    iget v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 962
    iput v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "stopHandler"    # Landroid/os/Handler;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 759
    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    .line 789
    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->wordListPath:Ljava/lang/String;

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->modelPath:Ljava/lang/String;

    .line 791
    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->loadNameList:Ljava/lang/String;

    .line 788
    return-void
.end method

.method public setSensoryFilePath(II)V
    .locals 7
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .prologue
    const/4 v6, 0x1

    .line 795
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryAM(II)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "sensoryModelPath":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetSensoryGRAMMAR(II)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "sensoryGrammarPath":Ljava/lang/String;
    move-object v3, v2

    .line 798
    .local v3, "sensoryModelPath_sub":Ljava/lang/String;
    move-object v1, v0

    .line 800
    .local v1, "sensoryGrammarPath_sub":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    const-string/jumbo v4, "/system/lib/libSensoryBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/system/lib64/libSensoryBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 806
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    .line 808
    iput-object v2, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 809
    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname:Ljava/lang/String;

    .line 811
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/AudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 812
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSubModelBargeInEnable:Z

    .line 813
    iput-object v3, p0, Lcom/samsung/android/speech/SensoryAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 814
    iput-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    .line 816
    iget-object v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SUB model is loaded "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_2
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 821
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCameraBargeIn:Z

    .line 823
    iget-boolean v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryBargeInEnable:Z

    if-eqz v4, :cond_3

    .line 824
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isSensoryCameraBargeIn:Z

    .line 794
    :cond_3
    :goto_0
    return-void

    .line 825
    :cond_4
    iget v4, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mCommandType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 826
    iput-boolean v6, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isCancelBargeIn:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SensoryAudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->done:Z

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->readNshorts:I

    .line 258
    iget-object v0, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SensoryAudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeInAudioRecord start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 267
    iget-boolean v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.stop start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.stop end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.release start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call rec.release end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 285
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rec = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/SensoryAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopBargeInAudioRecord end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
