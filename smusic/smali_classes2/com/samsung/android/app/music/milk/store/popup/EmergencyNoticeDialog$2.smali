.class Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;
.super Ljava/lang/Object;
.source "EmergencyNoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->dismiss()V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getButtonClickListener()Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;->onNegativeButtonClicked()V

    .line 51
    return-void
.end method
