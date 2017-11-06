.class Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;
.super Ljava/lang/Object;
.source "SeslStandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 68
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->dismiss()V

    .line 75
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 72
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    goto :goto_0
.end method
