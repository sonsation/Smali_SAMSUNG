.class Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->dismiss()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->access$200(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 77
    .local v1, "menu":Landroid/view/Menu;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->access$100(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;->onPrepareMenu(Landroid/view/Menu;)V

    .line 78
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->access$300(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;Landroid/view/Menu;)V

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->show()V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$2;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 82
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
