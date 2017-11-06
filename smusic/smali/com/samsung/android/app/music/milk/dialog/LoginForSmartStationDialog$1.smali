.class Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog$1;
.super Ljava/lang/Object;
.source "LoginForSmartStationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/LoginForSmartStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    .line 30
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9194"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
