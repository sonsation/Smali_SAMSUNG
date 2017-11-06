.class Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "SeslCascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v3, 0x0

    .line 100
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->isModal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v0, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 102
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->dismiss()V

    .line 111
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    return-void

    .line 106
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 107
    .local v1, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    goto :goto_0
.end method
