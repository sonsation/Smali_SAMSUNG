.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "SeslCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->dismiss()V

    .line 742
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$2;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->access$001(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V

    goto :goto_0
.end method
