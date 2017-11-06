.class Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;
.super Ljava/lang/Object;
.source "DexListInputController.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "seslRecyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 198
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    .line 200
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 204
    return-void
.end method
