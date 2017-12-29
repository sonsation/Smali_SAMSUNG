.class public Lcom/samsung/vsf/SpeechRecognizer$Config;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private config:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    .line 39
    return-void
.end method


# virtual methods
.method getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-object v0
.end method

.method public setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "models"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "asrDictModels"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "durationMS"    # I

    .prologue
    const/16 v0, 0x190

    .line 94
    if-lt p1, v0, :cond_0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "epdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    return-object p0

    :cond_0
    const/16 p1, 0x190

    .line 95
    goto :goto_0
.end method

.method public setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "isEncodingNeeded"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "needEncoding"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-object p0
.end method

.method public setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "isPCMDumpRequired"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "pcmDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-object p0
.end method

.method public setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "required"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "clientOwnsRecorder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    return-object p0
.end method

.method public setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "isSPXDumpRequired"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "spxDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    return-object p0
.end method

.method public setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "required"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "requireSpeechDetection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    return-object p0
.end method

.method public setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "isSpeechDetectionRequired"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "clientOwnsSpeechDetector"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object p0
.end method

.method public setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "durationMS"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "spdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-object p0
.end method

.method public setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "samplingRate"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "samplingRate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    return-object p0
.end method

.method public setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "useTLS"    # Z
    .param p4, "certPath"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "serverAddress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "portNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "useTLS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "certPath"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object p0
.end method

.method public setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "full"    # Z
    .param p2, "lastPage"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "tos_full"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "tos_optional"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    return-object p0
.end method

.method public setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .param p1, "usePLM"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "usePLM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    return-object p0
.end method
