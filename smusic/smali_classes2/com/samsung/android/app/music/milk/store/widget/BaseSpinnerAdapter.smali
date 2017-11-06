.class public abstract Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaseSpinnerAdapter.java"


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
.field private selectionPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TItem;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter<TItem;>;"
    .local p2, "objects":[Ljava/lang/Object;, "[TItem;"
    const v0, 0x7f04012c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->selectionPosition:I

    .line 19
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter<TItem;>;"
    const/4 v5, 0x1

    .line 53
    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 56
    .local v2, "vi":Landroid/view/LayoutInflater;
    const v3, 0x7f04012b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f120391

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->onBindTextView(ILandroid/widget/TextView;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getItemString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "sort":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->selectionPosition:I

    if-ne v3, p1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110141

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 81
    :cond_1
    :goto_0
    return-object p2

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110140

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11013f

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public abstract getItemString(I)Ljava/lang/String;
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter<TItem;>;"
    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    .local v0, "vi":Landroid/view/LayoutInflater;
    const v1, 0x7f04012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    .end local v0    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f120391

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->onBindTextView(ILandroid/widget/TextView;)V

    .line 47
    return-object p2
.end method

.method protected onBindTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 30
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->getItemString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "sort":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method

.method public setSelectionPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 26
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter<TItem;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->selectionPosition:I

    .line 27
    return-void
.end method
