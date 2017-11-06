.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "SeslAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Landroid/widget/ListView;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 1046
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    .line 1050
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 1049
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1051
    return-void
.end method
