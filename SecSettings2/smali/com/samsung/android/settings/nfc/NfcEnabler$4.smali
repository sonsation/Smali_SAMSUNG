.class Lcom/samsung/android/settings/nfc/NfcEnabler$4;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcEnabler;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    .line 780
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$4;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    .line 778
    return-void
.end method
