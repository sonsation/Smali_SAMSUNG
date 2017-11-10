.class Lcom/sec/android/app/camera/Camera$VoiceRecognizer;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceRecognizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x1a4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Camera6"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceRecognition result string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$5800(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/speech/SemSpeechRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$5800(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/android/speech/SemSpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getRecognitionResult()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-interface {v1, v2, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$5900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Camera6"

    const-string v2, "ignored voice recognition during capturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1, v6}, Lcom/sec/android/app/camera/Camera;->access$6000(Lcom/sec/android/app/camera/Camera;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    const/16 v2, 0x82

    invoke-interface {v1, v2, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$5900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Camera6"

    const-string v2, "ignored voice recognition during capturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1, v6}, Lcom/sec/android/app/camera/Camera;->access$6100(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getIndicators()Lcom/sec/android/app/camera/menu/Indicators;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
