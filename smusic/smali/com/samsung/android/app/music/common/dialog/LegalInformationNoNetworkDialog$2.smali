.class Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$2;
.super Ljava/lang/Object;
.source "LegalInformationNoNetworkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
