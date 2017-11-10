.class public Lcom/samsung/android/media/soundshot/SemAudioRecorder;
.super Ljava/lang/Object;
.source "SemAudioRecorder.java"


# static fields
.field private static final QURAM_RECORDER_BUFFERSIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "SEFSemAudioRecorder"

.field private static qRecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;


# instance fields
.field private QURAM_RECORDER_AUDIO_ENCODING:I

.field private QURAM_RECORDER_BPP:I

.field private QURAM_RECORDER_CHANNELS:I

.field private QURAM_RECORDER_SAMPLERATE:I

.field private bufferSize:I

.field private mAudioSource:I

.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    invoke-direct {v0}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;-><init>()V

    sput-object v0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->qRecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    iput v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_BPP:I

    const v0, 0xac44

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iput v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/media/soundshot/SemAudioRecorder;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->qRecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    return-object v0
.end method


# virtual methods
.method public getAudioSampleRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    return v0
.end method

.method public getChannel()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRecorderBPP()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_BPP:I

    return v0
.end method

.method public init(I)Z
    .locals 8

    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_0

    iput v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    :cond_0
    iput p1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v4, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    iget v5, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto/16 :goto_0

    :cond_3
    move v0, v7

    goto/16 :goto_0
.end method

.method public init(II)Z
    .locals 8

    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez p2, :cond_0

    iput p2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_1

    iput v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    :cond_1
    iput p1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    return v0

    :cond_2
    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QURAM_RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v4, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    iget v5, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto/16 :goto_0

    :cond_4
    move v0, v7

    goto/16 :goto_0
.end method

.method public init(III)Z
    .locals 8

    const/16 v3, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_2

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    :goto_0
    if-lez p2, :cond_0

    iput p2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_1

    iput v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    :cond_1
    iput p1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_1
    return v0

    :cond_2
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    goto :goto_0

    :cond_3
    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioSource : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_SAMPLERATE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_CHANNELS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_AUDIO_ENCODING : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    iget v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    iget v4, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    iget v5, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_4

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "===> recorder null!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto/16 :goto_1

    :cond_5
    move v0, v7

    goto/16 :goto_1
.end method

.method public read([B)I
    .locals 4

    const/4 v1, -0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->bufferSize:I

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "qRecorder start start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_0
    const-string v0, "SEFSemAudioRecorder"

    const-string v2, "stop recorder in start"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->mAudioSource:I

    iget v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->init(II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SEFSemAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio Recorder init failed samplerate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const-string v0, "SEFSemAudioRecorder"

    const-string v2, "record start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "qrecorder start end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 2

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "qRecorder stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->recorder:Landroid/media/AudioRecord;

    const-string v0, "SEFSemAudioRecorder"

    const-string v1, "qRecorder stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
