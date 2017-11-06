.class Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog$1;
.super Ljava/lang/Object;
.source "NotEnoughSmartStationSeedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/NotEnoughSmartStationSeedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.radio.date_of_click_not_available_seed_popup"

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9195"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
