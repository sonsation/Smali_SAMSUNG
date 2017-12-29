.class public Lcom/samsung/vsf/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vsf/SpeechRecognizer$Config;,
        Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

.field private mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/samsung/vsf/SpeechRecognizer$Config;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object v2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : SpeechRecognizer()"

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 406
    iput-object p2, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConfig:Lcom/samsung/vsf/SpeechRecognizer$Config;

    .line 407
    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    .line 408
    new-instance v0, Lcom/samsung/vsf/SDKConnectionManager;

    invoke-direct {v0, p1, p2}, Lcom/samsung/vsf/SDKConnectionManager;-><init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    .line 409
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    .line 410
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vsf/SpeechRecognizer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/samsung/vsf/SpeechRecognizer$Config;

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : createSpeechRecognizer"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/vsf/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->unregisterResponseListener()V

    .line 494
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->destroy(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/vsf/RecognitionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/vsf/RecognitionListener;

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "SamsungSpeechRecognizer : setListener()"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mResponseHandler:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;

    goto :goto_0
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->startListening()V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer;->mConnMgr:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/vsf/SDKConnectionManager;->stopListening()V

    goto :goto_0
.end method
