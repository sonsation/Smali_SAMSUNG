.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SeslCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->val$this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setSelection(I)V

    .line 646
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 648
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->dismiss()V

    .line 651
    return-void
.end method
