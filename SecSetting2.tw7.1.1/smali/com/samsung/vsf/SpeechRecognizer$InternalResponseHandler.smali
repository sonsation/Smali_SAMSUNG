.class Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
.super Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalResponseHandler"
.end annotation


# instance fields
.field private final ERROR_DELAY:I

.field private client:Lcom/samsung/vsf/RecognitionListener;

.field public mInternalHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method private constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;-><init>()V

    const/16 v0, 0xbb8

    .line 502
    iput v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->ERROR_DELAY:I

    .line 517
    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;-><init>(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/vsf/SpeechRecognizer;
    .param p2, "x1"    # Lcom/samsung/vsf/SpeechRecognizer$1;

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
    .param p1, "x1"    # Lcom/samsung/vsf/RecognitionListener;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object p1
.end method

.method private extractResult(Landroid/os/Bundle;)Ljava/util/Properties;
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 635
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "asrLatency"

    const-string/jumbo v2, "asrLatency"

    .line 637
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "itn"

    const-string/jumbo v2, "itn"

    .line 638
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "instanceId"

    .line 639
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "utterance"

    const-string/jumbo v2, "utterance"

    .line 640
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    return-object v0
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onBeginningOfSpeech()"

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 3
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    if-nez v1, :cond_1

    .line 625
    :cond_0
    return-void

    .line 624
    :cond_1
    if-nez p1, :cond_2

    .line 628
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 629
    .local v0, "shorts":[S
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 631
    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onBufferReceived([S)V

    .line 632
    return-void

    .line 624
    .end local v0    # "shorts":[S
    :cond_2
    array-length v1, p1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onEndOfSpeech()"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    const-string/jumbo v0, "internal error"

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 613
    :cond_1
    :goto_1
    return-void

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer;->access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer;->access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->destroy(Z)V

    goto :goto_0

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "sendError"

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPartialResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->extractResult(Landroid/os/Bundle;)Ljava/util/Properties;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onReadyForSpeech(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onReadyForSpeech()"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onResults"

    .line 592
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->extractResult(Landroid/os/Bundle;)Ljava/util/Properties;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRmsChanged(I)V
    .locals 3
    .param p1, "rms"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
