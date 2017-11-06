.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "VoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoucherViewHolder"
.end annotation


# instance fields
.field public badge:Landroid/view/View;

.field public divider:Landroid/view/View;

.field public header_text:Landroid/widget/TextView;

.field public img:Landroid/widget/ImageView;

.field public registerButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 4
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
    const/4 v3, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 235
    const/16 v0, -0x14

    if-eq p3, v0, :cond_0

    const/16 v0, -0x1e

    if-ne p3, v0, :cond_2

    .line 237
    :cond_0
    const v0, 0x7f12014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->header_text:Landroid/widget/TextView;

    :goto_0
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    .end local p1    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;Landroid/view/View;)V

    .line 259
    :cond_1
    return-void

    .line 239
    .restart local p1    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    :cond_2
    const v0, 0x7f120496

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->img:Landroid/widget/ImageView;

    .line 240
    const v0, 0x7f120248

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->divider:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    const v0, 0x7f120221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    .line 246
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a040b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :goto_1
    const v0, 0x7f1200e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->badge:Landroid/view/View;

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;->registerButton:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$VoucherViewHolder;Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_0
    return-void
.end method
