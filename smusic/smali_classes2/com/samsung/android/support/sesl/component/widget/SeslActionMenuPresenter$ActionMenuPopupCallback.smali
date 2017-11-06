.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;
.source "SeslActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;-><init>()V

    .line 1099
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
