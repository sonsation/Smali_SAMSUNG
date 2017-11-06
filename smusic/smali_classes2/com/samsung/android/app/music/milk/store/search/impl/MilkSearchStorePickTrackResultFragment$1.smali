.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStorePickTrackResultFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
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
    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectAllModeChanged(Z)V
    .locals 0
    .param p1, "selectedAll"    # Z

    .prologue
    .line 123
    return-void
.end method

.method public onSelectCountChanged(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePickTrackResultFragment;I)V

    .line 132
    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 0
    .param p1, "isSelectMode"    # Z

    .prologue
    .line 127
    return-void
.end method
