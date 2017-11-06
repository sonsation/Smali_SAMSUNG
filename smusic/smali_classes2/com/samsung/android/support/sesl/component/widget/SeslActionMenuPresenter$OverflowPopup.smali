.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
.source "SeslActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 1015
    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZI)V

    .line 1016
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 1017
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupPresenterCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 1018
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close()V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    .line 1027
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->onDismiss()V

    .line 1028
    return-void
.end method
