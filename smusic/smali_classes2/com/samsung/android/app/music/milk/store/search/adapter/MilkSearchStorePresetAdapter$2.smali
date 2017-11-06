.class Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;
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

.field final synthetic val$deleteRecord:Landroid/widget/TextView;

.field final synthetic val$noRecord:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->val$deleteRecord:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->val$noRecord:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter;)Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/preset/OnRemoveItemViewClickedListener;->onRemoveAllItemViewClicked()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->val$deleteRecord:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStorePresetAdapter$2;->val$noRecord:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    return-void
.end method
