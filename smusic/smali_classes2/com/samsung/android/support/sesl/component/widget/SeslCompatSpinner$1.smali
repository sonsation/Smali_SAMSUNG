.class Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.source "SeslCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

.field final synthetic val$popup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;->val$popup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;->val$popup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->show()V

    .line 266
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
