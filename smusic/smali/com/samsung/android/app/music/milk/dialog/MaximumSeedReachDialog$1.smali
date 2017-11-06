.class Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;
.super Ljava/lang/Object;
.source "MaximumSeedReachDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

.field final synthetic val$ret:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->access$000(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;->this$0:Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->onPositiveButtonClicked()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MaximumSeedReachDialog$1;->val$ret:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 41
    return-void
.end method
