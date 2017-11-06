.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;
.super Ljava/lang/Object;
.source "MilkSearchStorePresetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    const-string v0, "MilkSearchStorePresetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindItemViewHolder : remove search history : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->val$position:I

    .line 116
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHistoryItemPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->val$position:I

    .line 119
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->getHistoryItemPosition(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 118
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;->onRemoveItemViewClicked(I)V

    .line 121
    :cond_0
    return-void
.end method
