.class public Lcom/samsung/android/app/music/milk/MilkBadgeMenu;
.super Ljava/lang/Object;
.source "MilkBadgeMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVisibility(Landroid/view/MenuItem;)Z
    .locals 4
    .param p0, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 55
    :cond_1
    const v3, 0x7f1200e1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "badge":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static setBadgeView(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;I)V
    .locals 8
    .param p0, "menu"    # Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "count"    # I

    .prologue
    const/16 v7, 0x8

    .line 17
    const v6, 0x7f04001c

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 18
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    .line 21
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1200e6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 22
    .local v4, "title":Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const v6, 0x7f1200e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 25
    .local v3, "icon":Landroid/widget/ImageView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 26
    .local v2, "drawableicon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :cond_0
    const v6, 0x7f1200e1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "badge":Landroid/view/View;
    if-lez p2, :cond_1

    .line 34
    const v6, 0x7f1200e3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "badge_text":Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .end local v1    # "badge_text":Landroid/widget/TextView;
    :goto_0
    new-instance v6, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
