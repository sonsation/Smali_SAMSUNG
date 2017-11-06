.class Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1036
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;->val$dialog:Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mDialog:Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDialog;->dismiss()V

    .line 1040
    :cond_0
    return-void
.end method
