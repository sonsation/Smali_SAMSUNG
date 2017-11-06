.class Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/widget/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerPopupWindowAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;>;"
    const v0, 0x7f04024d

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;

    .line 178
    .local v0, "item":Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;
    if-nez v0, :cond_0

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 195
    :goto_0
    return-object v3

    .line 182
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;->summary:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04024e

    .line 184
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 189
    :goto_1
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    .local v1, "text1":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    .local v2, "text2":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 193
    iget-object v3, v0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    move-object v3, p2

    .line 195
    goto :goto_0

    .line 186
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04024d

    .line 187
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method
