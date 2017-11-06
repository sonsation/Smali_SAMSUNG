.class Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;
.super Ljava/lang/Object;
.source "ArtistSelectPopup.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->access$000(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 84
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    .line 86
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->dismiss()V

    .line 92
    return-void

    .line 89
    :cond_0
    const-string v1, "ArtistSelectPopup"

    const-string v2, "onItemClick : artist is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
