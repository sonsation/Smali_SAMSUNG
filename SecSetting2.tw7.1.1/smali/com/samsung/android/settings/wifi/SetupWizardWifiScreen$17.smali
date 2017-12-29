.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 771
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 772
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiView:Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiView:Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->onNextButtonPressed()V

    .line 770
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0
.end method
