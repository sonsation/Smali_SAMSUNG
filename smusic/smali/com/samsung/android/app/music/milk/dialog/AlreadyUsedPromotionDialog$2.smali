.class Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;
.super Ljava/lang/Object;
.source "AlreadyUsedPromotionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog$2;->this$0:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->access$100(Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->onNegativeButtonClicked()V

    .line 40
    return-void
.end method
