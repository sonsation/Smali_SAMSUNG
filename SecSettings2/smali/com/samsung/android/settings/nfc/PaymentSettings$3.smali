.class Lcom/samsung/android/settings/nfc/PaymentSettings$3;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/PaymentSettings;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->finishFragment()V

    .line 329
    return-void
.end method
