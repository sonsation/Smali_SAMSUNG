.class public Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public playView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 3
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    const/4 v2, 0x0

    .line 1270
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 1272
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1279
    :cond_1
    const v1, 0x7f120207

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->playView:Landroid/view/View;

    .line 1281
    const v1, 0x7f120146

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1282
    .local v0, "textLayout":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1283
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->animateViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1285
    :cond_2
    return-void
.end method
