.class Lcom/samsung/android/settings/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field final synthetic val$alertType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcEnabler;
    .param p2, "val$alertType"    # Ljava/lang/String;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 754
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "NfcSettingsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getViewID(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 758
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "RwOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 763
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_beam_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    .line 765
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "AndroidBeamOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
