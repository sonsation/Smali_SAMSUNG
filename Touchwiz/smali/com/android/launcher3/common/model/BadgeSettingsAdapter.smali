.class public Lcom/android/launcher3/common/model/BadgeSettingsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BadgeSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;,
        Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeSettingsAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnChangeListener:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mValues:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;)Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mOnChangeListener:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/BadgeSettingsAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->onBindViewHolder(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    iput-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    .line 48
    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    :cond_1
    const-string v0, "BadgeSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: postion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mItem:Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment$BadgeAppItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$1;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    .line 52
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001e

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/common/model/BadgeSettingsAdapter$ViewHolder;-><init>(Lcom/android/launcher3/common/model/BadgeSettingsAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnChangeListener(Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/launcher3/common/model/BadgeSettingsAdapter;->mOnChangeListener:Lcom/android/launcher3/common/model/BadgeSettingsAdapter$OnChangeListener;

    .line 31
    return-void
.end method
