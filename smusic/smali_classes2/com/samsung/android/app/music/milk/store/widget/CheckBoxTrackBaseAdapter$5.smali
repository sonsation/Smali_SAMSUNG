.class Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;
.super Ljava/lang/Object;
.source "CheckBoxTrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    .prologue
    .line 281
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick : fragment manager is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogScreen()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->access$100(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->val$position:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->selectMoreOption()V

    goto :goto_0
.end method
