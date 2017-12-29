.class public Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
.super Ljava/lang/Object;
.source "VoiceCommandHelper.java"

# interfaces
.implements Lcom/samsung/vsf/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;
    }
.end annotation


# static fields
.field public static CERT_PATH:Ljava/lang/String;

.field public static ENCODING_DONE_IN_SDK:Z

.field public static RECORDING_DONE_IN_SDK:Z

.field public static SPEECH_DETECTION_DONE_IN_SDK:Z

.field public static USE_TLS:Z


# instance fields
.field private mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    .line 24
    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    .line 25
    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    .line 28
    sput-boolean v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->USE_TLS:Z

    .line 29
    const-string/jumbo v0, "/system/etc/security/cacerts/399e7759.0"

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->CERT_PATH:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    .prologue
    const/4 v7, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "currentLocale":Ljava/lang/String;
    new-instance v2, Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {v2}, Lcom/samsung/vsf/SpeechRecognizer$Config;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 48
    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

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
    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 52
    sget-boolean v3, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    .line 54
    const-string/jumbo v3, "noauth-us-dcog-rel-bixby.samsung-svoice.com"

    sget-boolean v4, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->USE_TLS:Z

    sget-object v5, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->CERT_PATH:Ljava/lang/String;

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

    move-result-object v0

    .line 61
    .local v0, "config_full":Lcom/samsung/vsf/SpeechRecognizer$Config;
    invoke-static {p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    .line 62
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v2, p0}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    .line 39
    return-void
.end method

.method private getCurrentLocale()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 67
    .local v0, "curLocale":Ljava/util/Locale;
    const-string/jumbo v2, ""

    .line 68
    .local v2, "currentLocale":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 70
    .local v1, "curLocaleIso":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
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

    .line 74
    :cond_0
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curLocaleIso : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v3, "ko_kr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    const-string/jumbo v2, "ko-KR"

    .line 78
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_KOREAN"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_0
    return-object v2

    .line 79
    :cond_2
    const-string/jumbo v3, "en_us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    const-string/jumbo v2, "en-US"

    .line 81
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_ENG_US"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v3, "es_us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    const-string/jumbo v2, "es-US"

    .line 84
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_SPANISH_US"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    const-string/jumbo v3, "zh_cn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const-string/jumbo v2, "zh-CN"

    .line 87
    const-string/jumbo v3, "FcstVoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_CHINESE"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->destroy()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 94
    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onBufferReceived([S)V
    .locals 2
    .param p1, "arg0"    # [S

    .prologue
    .line 170
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onBufferReceived"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onPartialResults(Ljava/util/Properties;)V
    .locals 3
    .param p1, "results"    # Ljava/util/Properties;

    .prologue
    .line 196
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onPartialResults"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPartial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 202
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onResults(Ljava/util/Properties;)V
    .locals 3
    .param p1, "results"    # Ljava/util/Properties;

    .prologue
    .line 207
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SampleActivity : onResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    const-string/jumbo v1, "utterance"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;->onResult(Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onRmsChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 216
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "onRmsChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public startListenering()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "reqeust startListenering"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->startListening()V

    .line 100
    return-void
.end method

.method public stopListenering()V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "FcstVoiceCommandHelper"

    const-string/jumbo v1, "stopListenering"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    .line 158
    return-void
.end method
