.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1259
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "Don\'t skip !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method
