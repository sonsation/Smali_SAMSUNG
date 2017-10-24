.class Lcom/android/server/FMRadioService$2;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 345
    const-string/jumbo v1, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/android/server/FMRadioService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "==> intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/FMRadioService;->-set6(Lcom/android/server/FMRadioService;Z)Z

    .line 356
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get14(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get11(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->semSetRadioSpeakerOn(Z)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TestMode :- making setRadioSpeakerOn:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get11(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 359
    return-void

    :cond_1
    move v1, v3

    .line 353
    goto :goto_0

    :cond_2
    move v1, v2

    .line 357
    goto :goto_1

    :cond_3
    move v3, v2

    .line 358
    goto :goto_2

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get11(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 364
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get8(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "tv_out"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, "tvstatus":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TV out setting value :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 367
    if-ne v0, v2, :cond_5

    .line 368
    return-void

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 370
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 372
    :cond_6
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 375
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 377
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 342
    .end local v0    # "tvstatus":I
    :cond_7
    :goto_3
    return-void

    .line 379
    .restart local v0    # "tvstatus":I
    :cond_8
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_3

    .line 383
    .end local v0    # "tvstatus":I
    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_3

    .line 386
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 388
    const-string/jumbo v1, "mReceiver: ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get8(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 390
    const-string/jumbo v5, "airplane_mode_on"

    .line 389
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v3, v2

    :cond_b
    invoke-static {v1, v3}, Lcom/android/server/FMRadioService;->-set2(Lcom/android/server/FMRadioService;Z)Z

    .line 392
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-get3(Lcom/android/server/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get3(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 396
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    goto :goto_3

    .line 398
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 400
    const-string/jumbo v1, "mReceiver: ACTION_TVOUT_PLUG"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/android/server/FMRadioService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "==> intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 404
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get14(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 409
    return-void

    .line 411
    :cond_e
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_f

    move v3, v2

    :cond_f
    invoke-static {v1, v3}, Lcom/android/server/FMRadioService;->-set7(Lcom/android/server/FMRadioService;Z)Z

    .line 413
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get15(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 415
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 417
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0xa

    invoke-static {v1, v2, v3, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    goto/16 :goto_3

    .line 420
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.samsung.media.save_fmrecording_only"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 420
    if-eqz v1, :cond_15

    .line 422
    :cond_11
    const-string/jumbo v1, "ACTION_SAVE_FMRECORDING_ONLY is called "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get17(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 424
    :cond_12
    const-string/jumbo v1, "mReceiver:Stop FM for Camera -"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get30(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 426
    const-string/jumbo v1, "mReceiver:Stop recording for Camera "

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 429
    :cond_13
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v2, v5, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 433
    :goto_4
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get5(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-get4(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto/16 :goto_3

    .line 431
    :cond_14
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_4

    .line 434
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 435
    const-string/jumbo v1, "mReceiver: KNOX_MODE_USER_SWITCH - fmradio off"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-get12(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-wrap8(Lcom/android/server/FMRadioService;)V

    .line 438
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 439
    iget-object v1, p0, Lcom/android/server/FMRadioService$2;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v2, v5, v2}, Lcom/android/server/FMRadioService;->-wrap0(Lcom/android/server/FMRadioService;ZIZ)Z

    goto/16 :goto_3
.end method
