.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;
.super Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;
.source "SeslCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeslCompatWindowCallbackN"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 4
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN$SeslCompatWindowCallbackN;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;->getPanelState(IZ)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;

    move-result-object v0

    .line 46
    .local v0, "panel":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-super {p0, p1, v1, p3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23$SeslCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0
.end method
