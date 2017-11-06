.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "SeslActionMenuView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuPresenterCallback;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 869
    return-void
.end method

.method public onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method
