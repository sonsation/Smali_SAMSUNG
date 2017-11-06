.class Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->access$100(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->access$000(Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$Callback;->onMenuItemSelected(Landroid/view/MenuItem;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow$1;->this$0:Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/MenuPopupWindow;->dismiss()V

    .line 67
    return-void
.end method
