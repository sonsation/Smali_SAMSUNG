.class Landroid/preference/InfinityListPreference$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfinityListPreference.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/InfinityListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/preference/InfinityListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/InfinityListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityListPreference$ListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Landroid/preference/InfinityListPreference$ListAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/InfinityListPreference$ListAdapter$1;-><init>(Landroid/preference/InfinityListPreference$ListAdapter;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/preference/InfinityListPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityListPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/InfinityListPreference$Object;

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "zff_autoset_list_item_view"

    invoke-static {v1, v2}, Landroid/preference/InfinitySet$Utils;->getIDinternalLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;

    invoke-direct {v1, p0, p2}, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;-><init>(Landroid/preference/InfinityListPreference$ListAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;

    invoke-virtual {p0, p1, v0}, Landroid/preference/InfinityListPreference$ListAdapter;->setItem(ILandroid/preference/InfinityListPreference$ListAdapter$ViewHolder;)V

    return-object p2
.end method

.method public setAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/InfinityListPreference$ListAdapter;->mList:Ljava/util/List;

    iput-object p1, p0, Landroid/preference/InfinityListPreference$ListAdapter;->filteredList:Ljava/util/List;

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iput-object p1, v0, Landroid/preference/InfinityListPreference;->mGenericList:Ljava/util/List;

    return-void
.end method

.method public setItem(ILandroid/preference/InfinityListPreference$ListAdapter$ViewHolder;)V
    .locals 5

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/preference/InfinityListPreference$Object;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/preference/InfinityListPreference$Object;

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/preference/InfinityListPreference$Object;->entrie:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/preference/InfinityListPreference$Object;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v2, v0, Landroid/preference/InfinityListPreference$Object;->thumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    check-cast v3, Ljava/lang/String;

    iget-object v2, p0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/InfinityListPreference;->compareCurrentItemAndValue(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iget-boolean v3, v0, Landroid/preference/InfinityListPreference;->mMultiChoice:Z

    if-nez v3, :cond_1

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    iput p1, v0, Landroid/preference/InfinityListPreference;->mCurrentIndex:I

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v3, :cond_2

    :cond_1
    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->chb:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    const-string v3, ""

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iget-object v2, v2, Landroid/preference/InfinityListPreference;->mEmptyValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
