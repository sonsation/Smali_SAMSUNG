.class Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchBaseResultFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .prologue
    .line 165
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 169
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 170
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 171
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    instance-of v3, v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;

    if-eqz v3, :cond_0

    .line 172
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;

    .line 173
    .end local v0    # "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    .line 174
    .local v1, "item":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    .end local v1    # "item":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v1    # "item":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getOrder()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "lastOrder":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemSelected : lastOrder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->mSearchResultPresenter:Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    iget-object v4, v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setOrder(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v3, v1, v4, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
