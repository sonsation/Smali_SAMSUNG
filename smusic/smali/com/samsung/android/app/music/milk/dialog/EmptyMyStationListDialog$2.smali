.class Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;
.super Ljava/lang/Object;
.source "EmptyMyStationListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "901"

    const-string v2, "9014"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;

    const-class v1, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/EmptyMyStationListDialog;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
