.class Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;
.super Ljava/lang/Object;
.source "RedirectSamsungPayInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 33
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 35
    const-string v4, "RedirectSamsungPayInstallDialog"

    const-string/jumbo v5, "onClick. context is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.android.spaylite"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const-string v4, "RedirectSamsungPayInstallDialog"

    const-string/jumbo v5, "onPositiveButtonClicked : Mini is already installed!!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v4, "com.samsung.android.spay"

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isSamsungPayStubApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.spay"

    .line 46
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 47
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 48
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v3    # "launchIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "901"

    const-string v6, "9197"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v4, "com.samsung.android.spay"

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.samsung.android.spayfw"

    .line 52
    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "market://details?id=com.samsung.android.spay"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "RedirectSamsungPayInstallDialog"

    const-string/jumbo v5, "onPositiveButtonClicked : Can not execute Action"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
