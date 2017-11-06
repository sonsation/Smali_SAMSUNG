.class Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;
.super Ljava/lang/Object;
.source "TrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 182
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick : fragment manager is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_0
.end method
