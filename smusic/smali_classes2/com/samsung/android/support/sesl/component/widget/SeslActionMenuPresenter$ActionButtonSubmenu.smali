.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
.source "SeslActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 1033
    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZI)V

    .line 1035
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 1036
    .local v6, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 1041
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupPresenterCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 1042
    return-void

    .line 1038
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOpenSubMenuId:I

    .line 1049
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->onDismiss()V

    .line 1050
    return-void
.end method
