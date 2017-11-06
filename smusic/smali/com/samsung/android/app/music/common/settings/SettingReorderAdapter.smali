.class public Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingReorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mReorderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTextLargerFontSize:I

.field private mTextLargerFontSizeResId:I


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "reorderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSizeResId:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSize:I

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mFragment:Landroid/app/Fragment;

    .line 44
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mReorderItemList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private setAirview(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const v1, 0x7f12015c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "reorderIcon":Landroid/view/View;
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 104
    .end local v0    # "reorderIcon":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTextLargerFontSizeResId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSizeResId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 71
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400b8

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, p2}, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->setAirview(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mReorderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;

    .line 76
    .local v2, "item":Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;
    const v4, 0x7f120078

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "text":Landroid/widget/TextView;
    iget v4, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSize:I

    if-eqz v4, :cond_1

    .line 78
    iget v4, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    :cond_1
    iget-object v4, v2, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v4, 0x7f12015a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 83
    .local v0, "check":Landroid/widget/CheckBox;
    iget-boolean v4, v2, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;->isFixedItem:Z

    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    :goto_0
    return-object p2

    .line 88
    :cond_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 92
    iget-boolean v4, v2, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;->isChecked:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setReorderItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "reorderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter$ReorderItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mReorderItemList:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public setTextLargerFontSize(I)V
    .locals 2
    .param p1, "fontSizeResId"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSizeResId:I

    .line 108
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mFragment:Landroid/app/Fragment;

    .line 110
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSize:I

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingReorderAdapter;->mTextLargerFontSize:I

    goto :goto_0
.end method
