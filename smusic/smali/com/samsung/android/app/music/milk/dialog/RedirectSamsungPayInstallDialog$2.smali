.class Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$2;
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
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9196"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
