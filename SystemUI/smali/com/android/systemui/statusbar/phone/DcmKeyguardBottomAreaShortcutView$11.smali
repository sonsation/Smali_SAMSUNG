.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x12cd

    .line 725
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    const-string/jumbo v3, "spcnt"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 728
    .local v1, "cnt":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap4(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    .line 724
    .end local v1    # "cnt":I
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    const-string/jumbo v3, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v4, "KeyguardBottomAreaView.onReceive() : BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap1(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    .line 732
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v2, "countUpdateIntent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 735
    .end local v2    # "countUpdateIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    const-string/jumbo v3, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v4, "recieve LOCKED_BOOT_COMPLETED via BroadcastReceiver, update Shortcuts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 738
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
