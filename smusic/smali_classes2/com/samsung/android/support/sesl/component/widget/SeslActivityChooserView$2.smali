.class Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;
.super Ljava/lang/Object;
.source "SeslActivityChooserView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->getListPopupWindow()Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->dismiss()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->getListPopupWindow()Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->show()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActivityChooserView;->mProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->subUiVisibilityChanged(Z)V

    goto :goto_0
.end method
