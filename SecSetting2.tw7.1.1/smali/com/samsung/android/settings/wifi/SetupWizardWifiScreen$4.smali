.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
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
    .line 379
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get15(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    .line 380
    return-void
.end method
