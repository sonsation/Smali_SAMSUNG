.class public abstract Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MilkSearchBaseSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TItem;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    .local p2, "objects":[Ljava/lang/Object;, "[TItem;"
    const v0, 0x7f040256

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110154

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->mPrimaryColor:I

    .line 39
    return-void
.end method

.method private createTabViewRipple(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "primaryColor"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 120
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    .line 125
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v0

    .line 122
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v1, 0x7f110141

    const/4 v2, 0x0

    .line 123
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 122
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    .restart local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method

.method private updateItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 109
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 110
    const v1, 0x7f020257

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->createTabViewRipple(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    const/4 v8, 0x0

    .line 69
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 72
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f040255

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->getItemString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "sort":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 78
    const v5, 0x7f120391

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, "tt":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v5, "SortSpinnerAdapter : getDropDownView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v5, "SortSpinnerAdapter : getDropDownView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCount() -1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "SortSpinnerAdapter : getDropDownView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sort"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->mPrimaryColor:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->updateItemView(Landroid/view/View;I)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110140

    invoke-static {v5, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 94
    .local v1, "normalColor":I
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->mPrimaryColor:I

    .line 95
    invoke-static {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 96
    .local v0, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    .end local v0    # "list":Landroid/content/res/ColorStateList;
    .end local v1    # "normalColor":I
    .end local v3    # "tt":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-object p2

    .line 99
    .restart local v3    # "tt":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->context:Landroid/content/Context;

    const v6, 0x7f11013f

    .line 100
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 99
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public abstract getItemString(I)Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    const/4 v7, 0x0

    .line 44
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 47
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f040256

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->getItemString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "sort":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 53
    const v5, 0x7f120391

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "tt":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 55
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11015c

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 57
    .local v1, "normalColor":I
    iget v5, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->mPrimaryColor:I

    .line 58
    invoke-static {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 59
    .local v0, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .end local v0    # "list":Landroid/content/res/ColorStateList;
    .end local v1    # "normalColor":I
    .end local v3    # "tt":Landroid/widget/TextView;
    :cond_1
    return-object p2
.end method

.method public onPrimaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 129
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter<TItem;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseSpinnerAdapter;->mPrimaryColor:I

    .line 130
    return-void
.end method
