.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;
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
    .line 389
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " OnClick of Positibe Button : Is Wi-Fi connected ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDataAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isConnWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isDataAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.setupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "b2bDeviceCheckIntent":Landroid/content/Intent;
    const-string/jumbo v1, "isLaunchedFromWifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    .end local v0    # "b2bDeviceCheckIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiView:Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;

    if-eqz v1, :cond_5

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiView:Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/BixbySetupWizardWifiView;->onNextButtonPressed()V

    goto :goto_0

    .line 403
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0
.end method
