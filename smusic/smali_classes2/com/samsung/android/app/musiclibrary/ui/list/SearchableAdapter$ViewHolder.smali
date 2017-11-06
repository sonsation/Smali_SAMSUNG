.class public Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SearchableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field selectorDivider:Landroid/view/View;

.field selectorLayout:Landroid/view/View;

.field titleDivider:Landroid/view/View;

.field titleLayout:Landroid/view/View;

.field titleText1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V
    .locals 4
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 345
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->list_category_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    .line 349
    if-lez p3, :cond_1

    .line 350
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->divider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->selectorDivider:Landroid/view/View;

    .line 359
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->list_category_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleText1:Landroid/widget/TextView;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->sub_title_divider:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleDivider:Landroid/view/View;

    .line 361
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->mWinsetUiEnabled:Z

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleText1:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_section_text1_winset:I

    .line 364
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleDivider:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->divider_list_winset:I

    .line 366
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 365
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 373
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->selectorLayout:Landroid/view/View;

    .line 376
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 368
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleText1:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    .line 369
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 368
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->titleDivider:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->divider_list_blur:I

    .line 371
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 370
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
