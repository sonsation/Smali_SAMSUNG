.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$3;
.super Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.source "SeslActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->getListPopupWindow()Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->showPopup()Z

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->dismissPopup()Z

    .line 260
    const/4 v0, 0x1

    return v0
.end method
