.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$2;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackResultFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
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
    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->hideKeyboardAndCursor()V

    .line 153
    return-void
.end method
