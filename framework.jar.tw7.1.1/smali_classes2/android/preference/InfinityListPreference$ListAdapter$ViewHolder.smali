.class Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InfinityListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/InfinityListPreference$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field chb:Landroid/widget/CheckBox;

.field iv:Landroid/widget/ImageView;

.field rb:Landroid/widget/RadioButton;

.field final synthetic this$1:Landroid/preference/InfinityListPreference$ListAdapter;

.field tv:Landroid/widget/TextView;

.field tvs:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/preference/InfinityListPreference$ListAdapter;Landroid/view/View;)V
    .locals 5

    iput-object p1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->this$1:Landroid/preference/InfinityListPreference$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->this$1:Landroid/preference/InfinityListPreference$ListAdapter;

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference$ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v1, "zff_autoset_listText"

    invoke-static {v4, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const-string/jumbo v1, "zff_autoset_listTextSecondary"

    invoke-static {v4, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->tvs:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iget-boolean v2, v2, Landroid/preference/InfinityListPreference;->mVisibleValue:Z

    if-nez v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string/jumbo v1, "zff_autoset_listImage"

    invoke-static {v4, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v2, v0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iget-object v3, v2, Landroid/preference/InfinityListPreference;->mThumbnailsArray:[Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget v2, v2, Landroid/preference/InfinityListPreference;->mListType:I

    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x30

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const-string/jumbo v1, "zff_autoset_listRadioButton"

    invoke-static {v4, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->rb:Landroid/widget/RadioButton;

    iget-object v2, v0, Landroid/preference/InfinityListPreference$ListAdapter;->this$0:Landroid/preference/InfinityListPreference;

    iget-boolean v2, v2, Landroid/preference/InfinityListPreference;->mMultiChoice:Z

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    const-string/jumbo v1, "zff_autoset_listCheckBox"

    invoke-static {v4, v1}, Landroid/preference/InfinitySet$Utils;->getIDinternalId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Landroid/preference/InfinityListPreference$ListAdapter$ViewHolder;->chb:Landroid/widget/CheckBox;

    if-nez v2, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    return-void
.end method
