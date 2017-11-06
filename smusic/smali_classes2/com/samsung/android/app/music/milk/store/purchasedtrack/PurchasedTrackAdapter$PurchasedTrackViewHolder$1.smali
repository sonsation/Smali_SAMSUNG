.class Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;
.super Ljava/lang/Object;
.source "PurchasedTrackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

.field final synthetic val$adapter:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->download:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    .line 240
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;->getItemId()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 241
    return-void
.end method
