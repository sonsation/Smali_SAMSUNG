.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;
    .param p2, "val$event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 590
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    .line 589
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 596
    :sswitch_1
    if-eqz p0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 598
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 599
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 603
    :sswitch_2
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    .line 604
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 606
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "identifyFingerprint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    .line 608
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 609
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 610
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v4, :cond_0

    .line 611
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 612
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f0b07cc

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap6(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    .line 632
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 634
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    .line 635
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 614
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4

    .line 615
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f0b07cf

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap6(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    goto :goto_1

    .line 617
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_5

    .line 618
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;)V

    .line 624
    const-wide/16 v4, 0xc8

    .line 619
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 625
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    .line 626
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap3(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    .line 627
    return-void

    .line 628
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 629
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap5(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    .line 630
    return-void

    .line 590
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
