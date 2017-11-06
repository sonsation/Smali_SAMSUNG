.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 222
    .local v0, "checkSelectAll":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;Z)V

    goto :goto_0

    .end local v0    # "checkSelectAll":Z
    :cond_1
    move v0, v1

    .line 220
    goto :goto_1

    .line 227
    .restart local v0    # "checkSelectAll":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;Z)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;Z)V

    goto :goto_0
.end method
