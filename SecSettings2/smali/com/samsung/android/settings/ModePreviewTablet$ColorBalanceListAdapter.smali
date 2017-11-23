.class public Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ModePreviewTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorBalanceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 496
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->mContext:Landroid/content/Context;

    .line 497
    const-string/jumbo v3, "layout_inflater"

    .line 496
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 500
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 501
    const v2, 0x7f040074

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 502
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 503
    .local v0, "holder":Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;
    const v2, 0x7f1100e5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    .line 504
    const v2, 0x7f1101da

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    .line 505
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 510
    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0b0568

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f0b0569

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 514
    iget-object v2, v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 517
    :cond_0
    return-object p2

    .line 507
    .end local v0    # "holder":Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;

    .restart local v0    # "holder":Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;
    goto :goto_0
.end method
