.class Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;
.super Ljava/lang/Object;
.source "MilkSpotlightStationAddedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/app/Activity;
    instance-of v2, v0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "9153"

    .line 129
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
