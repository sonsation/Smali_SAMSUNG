.class Lcom/android/settings/vpn2/ConfigDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfigDialogFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/ConfigDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/ConfigDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/vpn2/ConfigDialogFragment;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->-get0(Lcom/android/settings/vpn2/ConfigDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "DeleteVPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 338
    .local v0, "dialog":Landroid/content/DialogInterface;
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    const/4 v3, -0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->-get0(Lcom/android/settings/vpn2/ConfigDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "VPNName"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->-get0(Lcom/android/settings/vpn2/ConfigDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EditVPNnetwork"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment$1;->this$0:Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-static {v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->-get0(Lcom/android/settings/vpn2/ConfigDialogFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 343
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    return-void
.end method
