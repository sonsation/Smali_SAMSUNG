.class Lcom/samsung/android/settings/nfc/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcEnabler;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    .line 134
    const/4 v3, 0x1

    .line 133
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    goto :goto_0
.end method