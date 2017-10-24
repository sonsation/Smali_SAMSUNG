.class Lcom/android/server/desktopmode/DesktopModeService$10;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1214
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1216
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "samsungapps://ProductDetail/com.sec.android.app.desktoplauncher"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1217
    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1220
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1213
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v2, "hdmi"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    goto :goto_0
.end method
