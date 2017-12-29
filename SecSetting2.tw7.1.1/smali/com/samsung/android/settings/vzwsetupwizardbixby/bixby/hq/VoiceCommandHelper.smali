.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;
.super Ljava/lang/Object;
.source "VoiceCommandHelper.java"

# interfaces
.implements Lcom/samsung/vsf/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;
    }
.end annotation


# static fields
.field public static ENCODING_DONE_IN_SDK:Z

.field public static RECORDING_DONE_IN_SDK:Z

.field public static SPEECH_DETECTION_DONE_IN_SDK:Z

.field public static USE_TLS:Z


# instance fields
.field private mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    .line 25
    sput-boolean v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    .line 26
    sput-boolean v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    .line 29
    sput-boolean v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->USE_TLS:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .prologue
    const/4 v7, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->getCurrentLocale()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "currentLocale":Ljava/lang/String;
    new-instance v2, Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {v2}, Lcom/samsung/vsf/SpeechRecognizer$Config;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 48
    sget-boolean v3, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 50
    const/16 v3, 0x3e80

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 51
    sget-boolean v3, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 52
    sget-boolean v3, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 54
    const-string/jumbo v3, "noauth-us-dcog-rel-bixby.samsung-svoice.com"

    sget-boolean v4, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->USE_TLS:Z

    const-string/jumbo v5, "/system/etc/security/cacerts/399e7759.0"

    const/16 v6, 0x1bb

    .line 46
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 57
    const-string/jumbo v3, "dcog"

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 58
    const/16 v3, 0x29a

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 59
    const/16 v3, 0x1388

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v1

    .line 68
    .local v1, "speechRecognizerConfig":Lcom/samsung/vsf/SpeechRecognizer$Config;
    invoke-static {p1, v1}, Lcom/samsung/vsf/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    .line 69
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v2, p0}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    .line 39
    return-void
.end method

.method private getCurrentLocale()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 74
    .local v0, "curLocale":Ljava/util/Locale;
    const-string/jumbo v2, "en-US"

    .line 75
    .local v2, "currentLocale":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "curLocaleIso":Ljava/lang/String;
    const-string/jumbo v3, "VoiceCommandHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curLocaleIso : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v3, "ko_kr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const-string/jumbo v2, "ko-KR"

    .line 79
    const-string/jumbo v3, "VoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_KOREAN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->destroy()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 87
    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onBufferReceived([S)V
    .locals 2
    .param p1, "arg0"    # [S

    .prologue
    .line 113
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onBufferReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string/jumbo v0, "VoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string/jumbo v0, "VoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onPartialResults(Ljava/util/Properties;)V
    .locals 2
    .param p1, "results"    # Ljava/util/Properties;

    .prologue
    .line 141
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onPartialResults"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onResults(Ljava/util/Properties;)V
    .locals 2
    .param p1, "results"    # Ljava/util/Properties;

    .prologue
    .line 153
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    const-string/jumbo v1, "utterance"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onResult(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onRmsChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 161
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onRmsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->startListening()V

    .line 93
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    .line 98
    return-void
.end method
