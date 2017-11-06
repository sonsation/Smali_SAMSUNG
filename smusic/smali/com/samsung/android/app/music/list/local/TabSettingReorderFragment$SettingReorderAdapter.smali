.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
.source "TabSettingReorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingReorderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

.field private mTextLargerFontResId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;-><init>()V

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mTextLargerFontResId:I

    .line 364
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    .line 365
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->key:I

    const v1, 0x10030

    if-ne v0, v1, :cond_0

    const/16 v0, -0x3ea

    .line 440
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 369
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    iget-object v6, v6, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    .line 370
    .local v3, "item":Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->getItemViewType(I)I

    move-result v5

    .line 371
    .local v5, "viewType":I
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;

    invoke-direct {v7, p0, p1, v3}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v2, 0x7f0d01b3

    .line 381
    .local v2, "fontSizeId":I
    iget v6, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mTextLargerFontResId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 382
    iget v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mTextLargerFontResId:I

    .line 384
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 385
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 386
    .local v1, "fontSize":I
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    int-to-float v7, v1

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 387
    const/16 v6, -0x3ea

    if-ne v5, v6, :cond_2

    .line 388
    const v6, 0x7f0201c9

    .line 389
    invoke-virtual {v4, v6, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const v6, 0x7f1102c3

    .line 391
    invoke-static {v4, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 390
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 392
    invoke-virtual {v0, v9, v9, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 395
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v0, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 399
    :goto_0
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    const v7, 0x7f0a00c8

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 403
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->reorderView:Landroid/widget/ImageView;

    new-instance v7, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    iget-boolean v6, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->fixedItem:Z

    if-eqz v6, :cond_3

    .line 413
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 414
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 415
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    :goto_2
    return-void

    .line 397
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 401
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_3
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 420
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 421
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v7, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->isChecked:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 428
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040041

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 430
    .local v1, "v":Landroid/view/View;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 431
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mFragment:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    .line 432
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 433
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 434
    new-instance v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setLargerFontSizeId(I)V
    .locals 1
    .param p1, "fontSizeResId"    # I

    .prologue
    .line 449
    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mTextLargerFontResId:I

    if-ne v0, p1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->mTextLargerFontResId:I

    .line 453
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
