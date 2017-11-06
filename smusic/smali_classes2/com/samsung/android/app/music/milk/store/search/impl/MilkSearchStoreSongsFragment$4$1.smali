.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->onSelectAllModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V

    move-object v0, p1

    .line 306
    check-cast v0, Landroid/widget/CheckBox;

    .line 307
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->deselectAll()V

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->selectAll()V

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
