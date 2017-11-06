.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;
.super Ljava/lang/Object;
.source "RadioHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

.field final synthetic val$adapter:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;->val$adapter:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;->val$adapter:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    .line 335
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->getItemId()J

    move-result-wide v2

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 336
    return-void
.end method
