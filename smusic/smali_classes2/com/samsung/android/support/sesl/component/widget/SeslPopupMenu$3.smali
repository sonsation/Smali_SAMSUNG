.class Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;
.super Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.source "SeslPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->mPopup:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->show()V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslPopupMenu;->dismiss()V

    .line 181
    const/4 v0, 0x1

    return v0
.end method
