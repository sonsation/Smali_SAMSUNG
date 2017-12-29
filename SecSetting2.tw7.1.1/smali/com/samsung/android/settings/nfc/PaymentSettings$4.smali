.class Lcom/samsung/android/settings/nfc/PaymentSettings$4;
.super Ljava/lang/Object;
.source "PaymentSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;->onClick(Landroid/view/View;)V
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
    .line 271
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-get3(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;->-set0(Lcom/samsung/android/settings/nfc/PaymentSettings;Z)Z

    .line 273
    return-void
.end method
