.class Lcom/android/settings/personalvibration/SelectPatternDialog$3;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

.field final synthetic val$EditPattern:Landroid/widget/TextView;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/personalvibration/SelectPatternDialog;
    .param p2, "val$imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "val$EditPattern"    # Landroid/widget/TextView;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$3;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    iput-object p2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$3;->val$EditPattern:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$3;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 499
    return-void
.end method
