.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->onViewInitializeCompleted(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

.field final synthetic val$searchTrackAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->val$searchTrackAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->val$searchTrackAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->isSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->val$searchTrackAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->setSelectMode(Z)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->val$searchTrackAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->selectAll()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 235
    return-void
.end method
