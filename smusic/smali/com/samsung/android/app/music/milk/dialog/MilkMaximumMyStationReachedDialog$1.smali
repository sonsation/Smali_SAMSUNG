.class Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;
.super Ljava/lang/Object;
.source "MilkMaximumMyStationReachedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    const-class v2, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->onPositiveButtonClicked()V

    .line 68
    :cond_1
    return-void
.end method
