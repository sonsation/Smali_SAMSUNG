.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "SeslActionMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1068
    instance-of v1, p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getCallback()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    move-result-object v0

    .line 1072
    .local v0, "cb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 1073
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 1075
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1059
    if-nez p1, :cond_0

    .line 1063
    :goto_0
    return v2

    .line 1061
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOpenSubMenuId:I

    .line 1062
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getCallback()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    move-result-object v0

    .line 1063
    .local v0, "cb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
