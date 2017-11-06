.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.source "SeslListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;->getPopup()Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    return-object v0
.end method
