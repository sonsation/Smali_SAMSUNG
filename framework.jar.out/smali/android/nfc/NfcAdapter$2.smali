.class Landroid/nfc/NfcAdapter$2;
.super Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->addAsyncFunctionListener(Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$completeListener:Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/NfcAdapter;
    .param p2, "val$completeListener"    # Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;

    .prologue
    .line 1699
    iput-object p1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$2;->val$completeListener:Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;

    invoke-direct {p0}, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunctionComplete(IZ)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1702
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$completeListener:Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;

    invoke-interface {v0, p1, p2}, Landroid/nfc/NfcAdapter$AsyncFunctionCompleteListener;->onFunctionComplete(IZ)V

    .line 1701
    return-void
.end method
