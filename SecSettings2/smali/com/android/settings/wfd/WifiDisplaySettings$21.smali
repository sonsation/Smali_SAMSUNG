.class Lcom/android/settings/wfd/WifiDisplaySettings$21;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/SemWifiDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/WifiDisplaySettings;
    .param p2, "val$mEditDeviceName"    # Landroid/widget/EditText;
    .param p3, "val$activeDisplay"    # Landroid/hardware/display/SemWifiDisplay;

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set0(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 2393
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get1(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-set1(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 2394
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->renameDongle(Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$activeDisplay:Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$21;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2389
    return-void

    .line 2393
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
