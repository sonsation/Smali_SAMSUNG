.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreMVFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

.field final synthetic val$searchMusicVideosAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->val$searchMusicVideosAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreMusicVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;

    invoke-direct {v1, p0, p2, p4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreMVFragment$1;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method
