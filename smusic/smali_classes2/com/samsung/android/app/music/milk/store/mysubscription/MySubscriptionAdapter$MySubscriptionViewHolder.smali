.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "MySubscriptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySubscriptionViewHolder"
.end annotation


# instance fields
.field public account_view_layout:Landroid/view/View;

.field public divider:Landroid/view/View;

.field public header:Landroid/view/View;

.field public img:Landroid/widget/ImageView;

.field public textView4:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 2
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
    const v1, 0x7f1202cd

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 263
    const/16 v0, -0x14

    if-ne p3, v0, :cond_1

    .line 264
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->header:Landroid/view/View;

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/16 v0, -0x1e

    if-eq p3, v0, :cond_0

    .line 269
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->header:Landroid/view/View;

    .line 270
    const v0, 0x7f12022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 275
    :cond_2
    const v0, 0x7f120496

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->img:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f120248

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionAdapter$MySubscriptionViewHolder;->divider:Landroid/view/View;

    goto :goto_0
.end method
