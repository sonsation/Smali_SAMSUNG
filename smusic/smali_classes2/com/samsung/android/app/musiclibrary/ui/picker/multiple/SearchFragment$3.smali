.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 253
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 254
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 255
    .local v1, "c":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    .line 256
    .local v5, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    if-eqz v1, :cond_0

    if-nez v5, :cond_1

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$302(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 258
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .line 259
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCheckedItemIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 258
    invoke-interface {v6, v7, v8, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 260
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    .line 290
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getValidItemCount()I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$302(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I

    .line 265
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)I

    move-result v6

    if-lez v6, :cond_4

    .line 266
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v2

    .line 267
    .local v2, "checkedItemCount":I
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 268
    if-ltz v2, :cond_2

    .line 269
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v4

    .line 270
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 271
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .line 272
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->isItemChecked(J)Z

    move-result v6

    .line 271
    invoke-virtual {v5, v3, v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;->onItemCheckedStateChanged()V

    .line 277
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    .line 288
    .end local v2    # "checkedItemCount":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->notifyDataSetChanged()V

    .line 289
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 279
    .restart local v2    # "checkedItemCount":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;->onItemCheckedStateChanged()V

    .line 280
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    goto :goto_2

    .line 285
    .end local v2    # "checkedItemCount":I
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;->onItemCheckedStateChanged()V

    .line 286
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V

    goto :goto_2
.end method
