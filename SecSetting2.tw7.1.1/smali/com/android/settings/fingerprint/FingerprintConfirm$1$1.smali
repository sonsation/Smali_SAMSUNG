.class Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintConfirm$1;
    .param p2, "val$event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 140
    :sswitch_1
    if-eqz p0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 146
    :sswitch_2
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    .line 147
    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "identifyFingerprint"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(ILandroid/content/Intent;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v3, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 154
    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v3, 0x7f0b07cc

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 168
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4

    .line 157
    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v3, 0x7f0b07cf

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_2

    .line 160
    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get1(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;)V

    .line 166
    const-wide/16 v4, 0xc8

    .line 161
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 134
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
