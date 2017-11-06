.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "SeslCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 748
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 749
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 750
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 752
    :cond_0
    return-void
.end method
