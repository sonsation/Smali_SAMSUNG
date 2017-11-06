.class Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;
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
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->onNegativeButtonClicked()V

    .line 81
    :cond_0
    return-void
.end method
